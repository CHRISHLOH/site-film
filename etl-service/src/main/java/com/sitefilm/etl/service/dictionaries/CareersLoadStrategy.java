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
        for (CareerResponseDto dto : careerResponseDtoList) {
            CareerType type = CareerType.fromTmdb(dto.getDepartment());
            for (String job : dto.getJobs()) {
                String key = type.getId() + "|" + job;
                if (seen.add(key)) {
                    Map<String, String> translations = new HashMap<>();
                    Career career = new Career();
                    career.setType(type);
                    translations.put("en-EN", job );
                    career.setTranslations(translations);
                    result.add(career);
                }
            }
        }
        return result.stream().toList();
    }
}
