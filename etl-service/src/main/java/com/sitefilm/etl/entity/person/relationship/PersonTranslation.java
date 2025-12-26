package com.sitefilm.etl.entity.person.relationship;

import com.sitefilm.etl.entity.person.Person;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.OffsetDateTime;

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
public class PersonTranslation{

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
    @Column(name = "locale_name", length = 200)
    private String localeName;

    @Column(name = "biography", columnDefinition = "TEXT")
    private String biography;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

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