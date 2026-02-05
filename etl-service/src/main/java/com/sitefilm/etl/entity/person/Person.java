package com.sitefilm.etl.entity.person;

import com.sitefilm.etl.entity.enums.Gender;
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

    @Id
    private Long id;

    @NotNull
    @Size(max = 100)
    @Column("original_name")
    private String name;

    @Column("birth_date")
    private LocalDate birthDate;

    @Column("death_date")
    private LocalDate deathDate;

    @Column("gender")
    private Gender gender;

    @Column("birth_place")
    private String birthPlace;

    @Column("career_id")
    private Long careerId;

    @Column("photo_url")
    private String photoUrl;

    @NotNull
    @Column("external_id")
    private Long externalId;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}