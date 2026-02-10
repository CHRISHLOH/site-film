package com.sitefilm.etl.dto.core.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.time.LocalDate;

@Data
public class PersonDetailsResponseDto {
    @JsonProperty("biography")
    private String biography;
    @JsonProperty("birthday")
    private LocalDate birthDate;
    @JsonProperty("deathday")
    private LocalDate deathDate;
    @JsonProperty("externalId")
    private Integer externalId;
    @JsonProperty("name")
    private String name;
    @JsonProperty("place_of_birth")
    private String placeOfBirth;
    @JsonProperty("known_for_department")
    private String knownAs;
    @JsonProperty("gender")
    private Byte gender;
    @JsonProperty("translations")
    private PersonTranslations personTranslations = new  PersonTranslations();
}
