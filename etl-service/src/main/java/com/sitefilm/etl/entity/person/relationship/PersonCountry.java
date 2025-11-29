package com.sitefilm.etl.entity.person.relationship;

import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.entity.directories.Country;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "person_countries",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_person_countries_country", columnList = "country_id")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_person_countries",
                        columnNames = {"person_id", "country_id"}
                )
        }
)
public class PersonCountry {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "country_id", nullable = false)
    private Country country;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof PersonCountry that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}