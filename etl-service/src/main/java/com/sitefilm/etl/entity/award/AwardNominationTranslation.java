package com.sitefilm.etl.entity.award;

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
        name = "award_nomination_translations",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_award_nom_trans_nomination", columnList = "nomination_id")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_award_nomination_translation",
                        columnNames = {"nomination_id", "locale"}
                )
        }
)
public class AwardNominationTranslation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "nomination_id", nullable = false)
    private AwardNomination nomination;

    @NotNull
    @Size(max = 5)
    @Column(name = "locale", nullable = false, length = 5)
    private String locale;

    @Size(max = 255)
    @Column(name = "work_title")
    private String workTitle;

    @Column(name = "notes", columnDefinition = "TEXT")
    private String notes;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AwardNominationTranslation that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}