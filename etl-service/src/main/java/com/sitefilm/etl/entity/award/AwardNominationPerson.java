package com.sitefilm.etl.entity.award;

import com.sitefilm.etl.entity.person.Person;
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
        name = "award_nomination_persons",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_award_nomination_persons_person", columnList = "person_id"),
                @Index(name = "idx_award_nomination_persons_order", columnList = "nomination_id, display_order")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_award_nomination_person",
                        columnNames = {"nomination_id", "person_id"}
                )
        }
)
public class AwardNominationPerson {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "nomination_id", nullable = false)
    private AwardNomination nomination;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @Column(name = "career_id")
    private Short careerId;

    @Column(name = "display_order")
    @Builder.Default
    private Integer displayOrder = 0;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AwardNominationPerson that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}