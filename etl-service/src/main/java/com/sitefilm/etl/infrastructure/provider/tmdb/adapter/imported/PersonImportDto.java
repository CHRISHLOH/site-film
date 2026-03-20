package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

import com.sitefilm.etl.domain.model.Source;
import com.sitefilm.etl.domain.model.person.CareerType;
import com.sitefilm.etl.domain.model.person.DataPersonTranslation;
import com.sitefilm.etl.domain.model.person.Gender;
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
