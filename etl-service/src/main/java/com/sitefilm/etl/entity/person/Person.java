package com.sitefilm.etl.entity.person;

import com.sitefilm.etl.entity.directories.City;
import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.enums.Gender;
import com.sitefilm.etl.entity.content.relationship.ContentPerson;
import com.sitefilm.etl.entity.person.relationship.PersonCareer;
import com.sitefilm.etl.entity.person.relationship.PersonCountry;
import com.sitefilm.etl.entity.person.relationship.PersonTranslation;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "persons",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_persons_name", columnList = "name"),
                @Index(name = "idx_persons_birth_date", columnList = "birth_date")
        }
)
public class Person {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(max = 100)
    @Column(name = "original_name", nullable = false, length = 100)
    private String name;

    @Column(name = "birth_date")
    private LocalDate birthDate;

    @Column(name = "death_date")
    private LocalDate deathDate;

    @Enumerated(EnumType.STRING)
    @Column(name = "gender", length = 10)
    private Gender gender;

    @Column(name = "birth_place", columnDefinition = "TEXT")
    private String birthPlace;

    @Column(name = "photo_url", columnDefinition = "TEXT")
    private String photoUrl;

    @NotNull
    @Column(name = "external_id")
    private Long externalId;

    @OneToMany(mappedBy = "person", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<PersonTranslation> translations = new HashSet<>();

    @OneToMany(mappedBy = "person", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<PersonCareer> careers = new HashSet<>();

    @OneToMany(mappedBy = "person")
    private Set<ContentPerson> contentPersons = new HashSet<>();

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Person person)) return false;
        return id != null && id.equals(person.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}