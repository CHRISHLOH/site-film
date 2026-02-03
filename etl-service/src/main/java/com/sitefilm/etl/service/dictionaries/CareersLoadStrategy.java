package com.sitefilm.etl.service.dictionaries;

import com.sitefilm.etl.configuration.client.DictionariesTmdbClient;
import com.sitefilm.etl.dto.dictionaries.CareerDto;
import com.sitefilm.etl.entity.enums.CareerType;
import com.sitefilm.etl.entity.directories.Career;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class CareersLoadStrategy implements TmdbDictionariesLoadStrategy<Career> {

    private final DictionariesTmdbClient dictionariesTmdbClient;

    public CareersLoadStrategy(DictionariesTmdbClient dictionariesTmdbClient) {
        this.dictionariesTmdbClient = dictionariesTmdbClient;
    }


    @Override
    public List<Career> loadTmdb() {
        List<CareerDto> careerDtoList = dictionariesTmdbClient.getCareers();
        Set<String> seen = new HashSet<>();
        Set<Career> result = new HashSet<>();
        for (CareerDto dto : careerDtoList) {
            CareerType type = CareerType.fromTmdb(dto.getDepartment());
            for (String job : dto.getJobs()) {
                String key = type.getId() + "|" + job;
                if (seen.add(key)) {
                    Career career = new Career();
                    career.setType(type);
                    result.add(career);
                }
            }
        }
        return result.stream().toList();
    }
}
