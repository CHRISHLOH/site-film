package com.sitefilm.etl.service.dictionaries;

import com.sitefilm.etl.configuration.client.DictionariesTmdbClient;
import com.sitefilm.etl.dto.dictionaries.CareerDto;
import com.sitefilm.etl.entity.CareerType;
import com.sitefilm.etl.entity.directories.Career;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CareersLoadStrategy implements TmdbDictionariesLoadStrategy<Career> {

    private final DictionariesTmdbClient dictionariesTmdbClient;

    public CareersLoadStrategy(DictionariesTmdbClient dictionariesTmdbClient) {
        this.dictionariesTmdbClient = dictionariesTmdbClient;
    }


    @Override
    public List<Career> loadTmdb() {
        List<CareerDto> careerDtoList = dictionariesTmdbClient.getCareers();

        List<Career> finalCareerList = new ArrayList<>();
        for (CareerDto careerDto : careerDtoList) {
            careerDto.getJobs().forEach(job -> {
                Career career = new Career();
                career.setCareer(job);
                career.setType(CareerType.valueOf(careerDto.getDepartment()));
                finalCareerList.add(career);
            });
        }
        return finalCareerList;
    }
}
