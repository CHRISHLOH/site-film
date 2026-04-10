package com.sitefilm.etl.infrastructure.provider.translation.adapter;

import com.sitefilm.etl.domain.port.api.MachineTranslationProviderPort;
import com.sitefilm.etl.infrastructure.provider.translation.client.MachineTranslationClient;
import com.sitefilm.etl.infrastructure.provider.translation.client.TranslationRequest;
import com.sitefilm.etl.infrastructure.provider.translation.client.TranslationResponse;
import org.springframework.stereotype.Component;

@Component
public class MachineTranslationAdapter implements MachineTranslationProviderPort {

    private final MachineTranslationClient machineTranslationClient;

    public MachineTranslationAdapter(MachineTranslationClient machineTranslationClient) {
        this.machineTranslationClient = machineTranslationClient;
    }

    @Override
    public String translate(String text, String sourceCode, String targetCode) {
        TranslationRequest request = new TranslationRequest(text, sourceCode, targetCode);
        TranslationResponse response = machineTranslationClient.getTranslation(request);
        return response.translation();
    }
}
