package com.sitefilm.etl.infrastructure.provider.translation.client;

import com.sitefilm.etl.configuration.TranslationUrlProperties;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClient;

@Slf4j
@Component
public class MachineTranslationClient {

    private final RestClient restClient;
    private final TranslationUrlProperties translationUrlProperties;

    public MachineTranslationClient(@Qualifier("machine") RestClient restClient, TranslationUrlProperties translationUrlProperties) {
        this.restClient = restClient;
        this.translationUrlProperties = translationUrlProperties;
    }

    public TranslationResponse getTranslation(TranslationRequest translationRequest) {
        log.info("Translation request: source={}, target={}, q={}",
                translationRequest.source(),
                translationRequest.target(),
                translationRequest.q());

        TranslationResponse response = restClient.post()
                .uri(uriBuilder -> uriBuilder
                        .path(translationUrlProperties.getTranslation())
                        .build())
                .body(translationRequest)
                .retrieve()
                .body(TranslationResponse.class);

        log.info("Translation response: {}", response);
        return response;
    }
}
