package com.sitefilm.etl.service.dictionaries;

import com.sitefilm.etl.configuration.client.DictionariesTmdbClient;
import com.sitefilm.etl.dto.dictionaries.CareerResponseDto;
import com.sitefilm.etl.entity.enums.CareerType;
import com.sitefilm.etl.entity.directories.Career;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class CareersLoadStrategy implements TmdbDictionariesLoadStrategy {

    private final DictionariesTmdbClient dictionariesTmdbClient;

    public CareersLoadStrategy(DictionariesTmdbClient dictionariesTmdbClient) {
        this.dictionariesTmdbClient = dictionariesTmdbClient;
    }

    @Override
    public List<Career> loadTmdb() {
        List<CareerResponseDto> careerResponseDtoList = dictionariesTmdbClient.getCareers();
        Set<String> seen = new HashSet<>();
        Set<Career> result = new HashSet<>();
        Map<String, String> translations = new HashMap<>();
        for (CareerResponseDto dto : careerResponseDtoList) {
            CareerType type = CareerType.fromTmdb(dto.getDepartment());
            for (String job : dto.getJobs()) {
                String key = type.getId() + "|" + job;
                if (seen.add(key)) {
                    Career career = new Career();
                    career.setType(type);
                    translations.put("en", job);
                    result.add(career);
                }
            }
        }
        return result.stream().peek(career -> career.setTranslations(translations)).toList();
    }
}
