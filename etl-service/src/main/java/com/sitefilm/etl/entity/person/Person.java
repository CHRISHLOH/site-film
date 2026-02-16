package com.sitefilm.etl.entity.person;

import com.sitefilm.etl.entity.enums.Gender;
import com.sitefilm.etl.entity.enums.Source;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.LocalDate;
import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder

@Table(
        name = "persons",
        schema = "content_service"
)
public class Person {
    private Long id;
    private String name;
    private LocalDate birthDate;
    private LocalDate deathDate;
    private Gender gender;
    private String birthPlace;
    private Short careerId;
    private String photoUrl;
    private Long externalId;
    private Source source;
    private OffsetDateTime createdAt;
    private OffsetDateTime updatedAt;
}