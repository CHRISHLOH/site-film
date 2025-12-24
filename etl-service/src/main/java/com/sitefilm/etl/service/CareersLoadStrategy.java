package com.sitefilm.etl.service;

import com.sitefilm.etl.configuration.TmdbClient;
import com.sitefilm.etl.dto.CareerDto;
import com.sitefilm.etl.entity.CareerType;
import com.sitefilm.etl.entity.directories.Career;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CareersLoadStrategy implements TmdbDictionariesLoadStrategy<Career> {

    private final TmdbClient tmdbClient;

    public CareersLoadStrategy(TmdbClient tmdbClient) {
        this.tmdbClient = tmdbClient;
    }


    @Override
    public List<Career> loadTmdb() {
        List<CareerDto> careerDtoList = tmdbClient.getCareers();

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
