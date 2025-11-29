package com.sitefilm.etl.entity.person.relationship;

import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.entity.directories.Career;
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
        name = "person_careers",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_person_careers_career", columnList = "career_id"),
                @Index(name = "idx_person_careers_person_order", columnList = "person_id, display_order")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_person_career",
                        columnNames = {"person_id", "career_id"}
                )
        }
)
public class PersonCareer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "career_id", nullable = false)
    private Career career;

    @Column(name = "display_order")
    @Builder.Default
    private Short displayOrder = 0;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof PersonCareer that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}