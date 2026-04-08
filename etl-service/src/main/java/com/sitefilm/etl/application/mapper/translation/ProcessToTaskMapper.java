package com.sitefilm.etl.application.mapper.translation;

import com.sitefilm.etl.domain.model.translations.TranslationProcess;
import com.sitefilm.etl.domain.model.translations.TranslationStatus;
import com.sitefilm.etl.domain.model.translations.TranslationTask;
import com.sitefilm.etl.infrastructure.provider.translation.client.TranslationResponse;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Component
public class ProcessToTaskMapper {
    private static final String OPEN_PART_SEPARATOR = "#";
    private static final String CLOSE_PART_SEPARATOR = "#";

    public List<TranslationTask> mapToTask(List<TranslationProcess> translationProcesses) {
        Map<String, TranslationTask> translationTaskMap = new HashMap<>();
        translationProcesses.forEach(
                translationProcess -> {
                    String key = translationProcess.getSourceCode() + "|" + translationProcess.getTargetCode();
                    translationTaskMap.compute(
                        key,
                        (k, value) -> {
                            if (value == null) {
                                return new TranslationTask(
                                        OPEN_PART_SEPARATOR + translationProcess.getId().toString()
                                                + CLOSE_PART_SEPARATOR
                                                + translationProcess.getOriginalText(),
                                        translationProcess.getSourceCode(),
                                        translationProcess.getTargetCode()
                                );
                            } else {
                                return new TranslationTask(
                                        value.q() + OPEN_PART_SEPARATOR + translationProcess.getId().toString()
                                                + CLOSE_PART_SEPARATOR
                                                + translationProcess.getOriginalText(),
                                        translationProcess.getSourceCode(),
                                        translationProcess.getTargetCode()
                                );
                            }
                        }
                    );
                }
        );
        return new ArrayList<>(translationTaskMap.values());
    }

    public List<TranslationProcess> mapToProcess(TranslationResponse response) {
        String text = response.translation();
        List<TranslationProcess> result = new ArrayList<>();
        Pattern pattern = Pattern.compile("#\\s*(\\d+)\\s*#");
        Matcher matcher = pattern.matcher(text);

        List<Long> ids = new ArrayList<>();
        List<Integer> starts = new ArrayList<>();
        List<Integer> markerStarts = new ArrayList<>();
        while (matcher.find()) {
            ids.add(Long.parseLong(matcher.group(1)));
            starts.add(matcher.end());
            markerStarts.add(matcher.start());
        }
        for (int i = 0; i < ids.size(); i++) {
            int start = starts.get(i);
            int end = (i + 1 < markerStarts.size()) ? markerStarts.get(i + 1) : text.length();
            String translated = text.substring(start, end).trim();
            TranslationProcess tp = new TranslationProcess();
            tp.setId(ids.get(i));
            tp.setTranslatedText(translated);
            tp.setTranslationStatus(TranslationStatus.LLM_TRANSLATE_SUCCESS);
            result.add(tp);
        }
        return result;
    }
}
