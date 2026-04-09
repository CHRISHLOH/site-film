package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.mapper.translation.ProcessToTaskMapper;
import com.sitefilm.etl.domain.model.translations.TranslationProcess;
import com.sitefilm.etl.domain.model.translations.TranslationStatus;
import com.sitefilm.etl.domain.model.translations.TranslationTask;
import com.sitefilm.etl.infrastructure.persistense.translation.TranslationsRepositoryAdapter;
import com.sitefilm.etl.infrastructure.provider.translation.adapter.MachineTranslationAdapter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Semaphore;

@Slf4j
@Component
public class TranslationUseCase {
    private final Semaphore semaphore = new Semaphore(5);
    private final TranslationsRepositoryAdapter translationsRepositoryAdapter;
    private final TranslationStatus  raw = TranslationStatus.RAW;
    private final ExecutorService executorService;
    private final MachineTranslationAdapter  machineTranslationAdapter;
    private final ProcessToTaskMapper  processToTaskMapper;

    public TranslationUseCase(TranslationsRepositoryAdapter translationsRepositoryAdapter, ExecutorService executorService, MachineTranslationAdapter machineTranslationAdapter, ProcessToTaskMapper processToTaskMapper) {
        this.translationsRepositoryAdapter = translationsRepositoryAdapter;
        this.executorService = executorService;
        this.machineTranslationAdapter = machineTranslationAdapter;
        this.processToTaskMapper = processToTaskMapper;
    }

    @Scheduled(fixedRate = 1000)
    public void scheduleTranslationBatch() {
        if (!semaphore.tryAcquire()) {
            return;
        }
        executorService.execute(() -> {
            try {
                List<TranslationProcess> translationProcesses = translationsRepositoryAdapter.findByTranslationStatus(raw);
                if (translationProcesses.isEmpty()) {
                    return;
                }
                List<TranslationTask> tasks = processToTaskMapper.mapToTask(translationProcesses);
                List<TranslationProcess> result = tasks.stream()
                        .flatMap(t -> machineTranslationAdapter.translate(t).stream())
                        .toList();
                translationsRepositoryAdapter.updateProcess(result);
            } catch (RuntimeException e) {
                log.error("Translation batch failed", e);
            } finally {
                semaphore.release();
            }
        });
    }
}
