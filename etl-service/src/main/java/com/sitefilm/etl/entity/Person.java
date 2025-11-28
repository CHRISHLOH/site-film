package com.sitefilm.etl.entity;

import com.sitefilm.etl.entity.enums.Gender;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.time.LocalDate;
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
                @Index(name = "idx_persons_country", columnList = "country_id"),
                @Index(name = "idx_persons_city", columnList = "city_id"),
                @Index(name = "idx_persons_name", columnList = "original_name, original_lastname"),
                @Index(name = "idx_persons_birth_date", columnList = "birth_date")
        }
)
public class Person extends AuditableEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(max = 100)
    @Column(name = "original_name", nullable = false, length = 100)
    private String originalName;

    @Size(max = 100)
    @Column(name = "original_lastname", length = 100)
    private String originalLastname;

    @Column(name = "birth_date")
    private LocalDate birthDate;

    @Column(name = "death_date")
    private LocalDate deathDate;

    @Enumerated(EnumType.STRING)
    @Column(name = "gender", length = 10)
    private Gender gender;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "country_id")
    private Country country;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "city_id")
    private City city;

    @Column(name = "photo_url", columnDefinition = "TEXT")
    private String photoUrl;

    // Relationships

    @OneToMany(mappedBy = "person", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<PersonTranslation> translations = new HashSet<>();

    @OneToMany(mappedBy = "person", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<PersonCareer> careers = new HashSet<>();

    @OneToMany(mappedBy = "person", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<PersonCountry> countries = new HashSet<>();

    @OneToMany(mappedBy = "person")
    @Builder.Default
    private Set<ContentPerson> contentPersons = new HashSet<>();

    // Helper methods

    public void addTranslation(PersonTranslation translation) {
        translations.add(translation);
        translation.setPerson(this);
    }

    public void removeTranslation(PersonTranslation translation) {
        translations.remove(translation);
        translation.setPerson(null);
    }

    public void addCareer(PersonCareer career) {
        careers.add(career);
        career.setPerson(this);
    }

    public void removeCareer(PersonCareer career) {
        careers.remove(career);
        career.setPerson(null);
    }

    public void addCountry(PersonCountry country) {
        countries.add(country);
        country.setPerson(this);
    }

    public void removeCountry(PersonCountry country) {
        countries.remove(country);
        country.setPerson(null);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Person)) return false;
        Person person = (Person) o;
        return id != null && id.equals(person.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}