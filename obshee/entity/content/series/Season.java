package com.sitefilm.etl.entity.content.series;

import com.sitefilm.etl.entity.content.Content;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

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
@Table(
        name = "seasons",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_seasons_content", columnList = "content_id"),
                @Index(name = "idx_seasons_number", columnList = "content_id, season_number")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_season",
                        columnNames = {"content_id", "season_number"}
                )
        }
)
public class Season{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @Column(name = "season_number", nullable = false)
    private Integer seasonNumber;

    @Column(name = "poster_url", columnDefinition = "TEXT")
    private String posterUrl;

    @Column(name = "release_date")
    private LocalDate releaseDate;

    @Column(name = "episodes_count")
    @Builder.Default
    private Integer episodesCount = 0;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

    @OneToMany(mappedBy = "season", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<SeasonTranslation> translations = new HashSet<>();

    @OneToMany(mappedBy = "season", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Episode> episodes = new HashSet<>();


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Season season)) return false;
        return id != null && id.equals(season.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}