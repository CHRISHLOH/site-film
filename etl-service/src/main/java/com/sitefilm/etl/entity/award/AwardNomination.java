package com.sitefilm.etl.entity.award;

import com.sitefilm.etl.entity.content.Content;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

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
@EntityListeners(AuditingEntityListener.class)
@Table(
        name = "award_nominations",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_award_nominations_content", columnList = "content_id"),
                @Index(name = "idx_award_nominations_category", columnList = "category_id"),
                @Index(name = "idx_award_nominations_year", columnList = "year DESC"),
                @Index(name = "idx_award_nominations_winner", columnList = "is_winner")
        }
)
public class AwardNomination {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "award_nominations_seq")
    @SequenceGenerator(
            name = "award_nominations_seq",
            sequenceName = "content_service.award_nominations_id_seq",
            allocationSize = 100
    )
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "category_id", nullable = false)
    private AwardCategory category;

    @Size(max = 255)
    @Column(name = "work_title")
    private String workTitle;

    @NotNull
    @Column(name = "year", nullable = false)
    private Integer year;

    @Column(name = "edition_number")
    private Integer editionNumber;

    @Column(name = "is_winner")
    @Builder.Default
    private Boolean isWinner = false;

    @Column(name = "ceremony_date")
    private LocalDate ceremonyDate;

    @Column(name = "notes", columnDefinition = "TEXT")
    private String notes;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @OneToMany(mappedBy = "nomination", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<AwardNominationPerson> persons = new HashSet<>();

    @OneToMany(mappedBy = "nomination", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<AwardNominationTranslation> translations = new HashSet<>();


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AwardNomination that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }

}