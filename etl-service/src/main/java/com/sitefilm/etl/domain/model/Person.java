package com.sitefilm.etl.domain.model;

import com.sitefilm.etl.domain.model.enums.CareerType;
import com.sitefilm.etl.domain.model.enums.Gender;
import com.sitefilm.etl.domain.model.enums.Source;
import lombok.*;

import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.util.List;

@Data
@Builder
public class Person {
    private Long id;
    private String name;
    private LocalDate birthDate;
    private LocalDate deathDate;
    private Gender gender;
    private String birthPlace;
    private CareerType knownAs;
    private String photoUrl;
    private Long externalId;
    private Source source;
    private List<DataPersonTranslation> personTranslation;
    private OffsetDateTime createdAt;
    private OffsetDateTime updatedAt;

    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", externalId=" + externalId +
                '}';
    }
}