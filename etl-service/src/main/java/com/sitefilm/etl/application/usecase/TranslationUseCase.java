package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.domain.model.translations.TranslationProcess;
import com.sitefilm.etl.domain.model.translations.TranslationStatus;
import com.sitefilm.etl.infrastructure.persistense.translation.TranslationsRepositoryAdapter;
import com.sitefilm.etl.infrastructure.provider.translation.adapter.MachineTranslationAdapter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Semaphore;

@Slf4j
@Component
public class TranslationUseCase {
    private final Semaphore batchSemaphore = new Semaphore(1);
    private final Semaphore processSemaphore = new Semaphore(4);
    private final TranslationsRepositoryAdapter translationsRepositoryAdapter;
    private final TranslationStatus  raw = TranslationStatus.RAW;
    private final ExecutorService executorService;
    private final MachineTranslationAdapter  machineTranslationAdapter;

    public TranslationUseCase(TranslationsRepositoryAdapter translationsRepositoryAdapter, ExecutorService executorService, MachineTranslationAdapter machineTranslationAdapter) {
        this.translationsRepositoryAdapter = translationsRepositoryAdapter;
        this.executorService = executorService;
        this.machineTranslationAdapter = machineTranslationAdapter;
    }

    @Scheduled(fixedRate = 15000)
    public void scheduleTranslationBatch() {
        if (!batchSemaphore.tryAcquire()) return;
        List<TranslationProcess> list = translationsRepositoryAdapter.findByTranslationStatus(raw);
        if (list.isEmpty()) return;
        try {
            List<CompletableFuture<TranslationProcess>> futures = new ArrayList<>();
            for (TranslationProcess tp : list) {
                processSemaphore.acquire();
                futures.add(
                        CompletableFuture.supplyAsync(() -> {
                            try {
                                String translatedText = machineTranslationAdapter.translate(
                                        tp.getOriginalText(),
                                        tp.getSourceCode(),
                                        tp.getTargetCode()
                                );
                                tp.setTranslatedText(translatedText);
                                return tp;
                            } finally {
                                processSemaphore.release();
                            }
                        }, executorService)
                );
            }
            List<TranslationProcess> result = futures.stream()
                    .map(CompletableFuture::join)
                    .toList();
            translationsRepositoryAdapter.updateProcess(result);
        } catch (InterruptedException e) {
            if (!list.isEmpty()) {
                translationsRepositoryAdapter.updateStatus(list);
            }
            throw new RuntimeException(e);
        } finally {
            batchSemaphore.release();
        }
    }
}
