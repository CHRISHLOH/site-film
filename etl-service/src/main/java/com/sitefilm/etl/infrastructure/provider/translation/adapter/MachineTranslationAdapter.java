package com.sitefilm.etl.infrastructure.provider.translation.adapter;

import com.sitefilm.etl.application.mapper.translation.ProcessToTaskMapper;
import com.sitefilm.etl.domain.model.translations.TranslationProcess;
import com.sitefilm.etl.domain.model.translations.TranslationTask;
import com.sitefilm.etl.domain.port.api.MachineTranslationProviderPort;
import com.sitefilm.etl.infrastructure.provider.translation.client.MachineTranslationClient;
import com.sitefilm.etl.infrastructure.provider.translation.client.TranslationRequest;
import com.sitefilm.etl.infrastructure.provider.translation.client.TranslationResponse;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MachineTranslationAdapter implements MachineTranslationProviderPort {

    private final MachineTranslationClient machineTranslationClient;
    private final ProcessToTaskMapper mapper;

    public MachineTranslationAdapter(MachineTranslationClient machineTranslationClient, ProcessToTaskMapper mapper) {
        this.machineTranslationClient = machineTranslationClient;
        this.mapper = mapper;
    }

    @Override
    public List<TranslationProcess> translate(TranslationTask task) {
        TranslationRequest translationRequest = mapToTranslationRequest(task);
        TranslationResponse response = machineTranslationClient.getTranslation(translationRequest);
        return mapper.mapToProcess(response);
    }

    private TranslationRequest mapToTranslationRequest(TranslationTask task) {
        return new TranslationRequest(
                task.q(),
                task.source(),
                task.target()
        );
    }
}
