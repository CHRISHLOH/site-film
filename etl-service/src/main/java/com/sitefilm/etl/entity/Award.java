package com.sitefilm.etl.entity;

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
        name = "awards",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_awards_machine_name", columnList = "machine_name"),
                @Index(name = "idx_awards_country", columnList = "country_id")
        }
)
public class Award {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(max = 100)
    @Column(name = "machine_name", nullable = false, unique = true, length = 100)
    private String machineName;

    @Column(name = "logo_url", columnDefinition = "TEXT")
    private String logoUrl;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "country_id")
    private Country country;

    @Column(name = "founded_year")
    private Integer foundedYear;

    @NotNull
    @Type(JsonType.class)
    @Column(name = "translations", nullable = false, columnDefinition = "jsonb")
    @Builder.Default
    private Map<String, String> translations = new HashMap<>();

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    // Relationships

    @OneToMany(mappedBy = "award", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<AwardCategory> categories = new HashSet<>();

    // Helper methods

    public void addCategory(AwardCategory category) {
        categories.add(category);
        category.setAward(this);
    }

    public void removeCategory(AwardCategory category) {
        categories.remove(category);
        category.setAward(null);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Award award)) return false;
        return id != null && id.equals(award.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}