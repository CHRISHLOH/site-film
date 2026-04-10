package com.sitefilm.etl.domain.port.api;

public interface MachineTranslationProviderPort {
    String translate(String text, String sourceCode, String targetCode);
}
