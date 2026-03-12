package com.sitefilm.etl.domain.model;

import com.sitefilm.etl.domain.model.enums.CareerType;
import com.sitefilm.etl.domain.model.enums.Gender;
import com.sitefilm.etl.domain.model.enums.Source;
import lombok.Data;

import java.time.LocalDate;
import java.util.List;

@Data
public class PersonImportDto {
    private String name;
    private LocalDate birthDate;
    private LocalDate deathDate;
    private Gender gender;
    private String birthPlace;
    private CareerType knownAs;
    private Long externalId;
    private Source source;
    private List<PersonMovieRole> personMovieData;
    private List<DataPersonTranslation> personTranslations;
}
