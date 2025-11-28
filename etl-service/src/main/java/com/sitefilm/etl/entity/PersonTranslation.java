package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "person_translations",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_person_translations_person", columnList = "person_id"),
                @Index(name = "idx_person_translations_locale", columnList = "locale")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_person_translation",
                        columnNames = {"person_id", "locale"}
                )
        }
)
public class PersonTranslation extends AuditableEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @NotNull
    @Size(max = 10)
    @Column(name = "locale", nullable = false, length = 10)
    private String locale;

    @Size(max = 100)
    @Column(name = "locale_name", length = 100)
    private String localeName;

    @Size(max = 100)
    @Column(name = "locale_lastname", length = 100)
    private String localeLastname;

    @Column(name = "biography", columnDefinition = "TEXT")
    private String biography;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof PersonTranslation that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}