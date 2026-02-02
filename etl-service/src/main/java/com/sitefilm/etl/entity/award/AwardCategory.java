package com.sitefilm.etl.entity.award;

import io.hypersistence.utils.hibernate.type.json.JsonType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.hibernate.annotations.Type;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.OffsetDateTime;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@EntityListeners(AuditingEntityListener.class)
@Table(
        name = "award_categories",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_award_categories_award", columnList = "award_id")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_award_category",
                        columnNames = {"award_id", "machine_name"}
                )
        }
)
public class AwardCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "award_categories_seq")
    @SequenceGenerator(
            name = "award_categories_seq",
            sequenceName = "content_service.award_categories_id_seq",
            allocationSize = 100
    )
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "award_id", nullable = false)
    private Award award;

    @NotNull
    @Size(max = 100)
    @Column(name = "machine_name", nullable = false, length = 100)
    private String machineName;

    @NotNull
    @Type(JsonType.class)
    @Column(name = "translations", nullable = false, columnDefinition = "jsonb")
    @Builder.Default
    private Map<String, String> translations = new HashMap<>();

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @OneToMany(mappedBy = "category", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<AwardNomination> nominations = new HashSet<>();

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AwardCategory that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}