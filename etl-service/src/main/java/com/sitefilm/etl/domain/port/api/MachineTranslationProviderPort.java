package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.domain.model.translations.TranslationProcess;
import com.sitefilm.etl.domain.model.translations.TranslationTask;

import java.util.List;

public interface MachineTranslationProviderPort {
    List<TranslationProcess> translate(TranslationTask translationProcesses);
}
