package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.time.LocalDate;
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
public class Season extends AuditableEntity {

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

    // Relationships

    @OneToMany(mappedBy = "season", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<SeasonTranslation> translations = new HashSet<>();

    @OneToMany(mappedBy = "season", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("episodeNumber ASC")
    @Builder.Default
    private Set<Episode> episodes = new HashSet<>();

    // Helper methods

    public void addTranslation(SeasonTranslation translation) {
        translations.add(translation);
        translation.setSeason(this);
    }

    public void removeTranslation(SeasonTranslation translation) {
        translations.remove(translation);
        translation.setSeason(null);
    }

    public void addEpisode(Episode episode) {
        episodes.add(episode);
        episode.setSeason(this);
    }

    public void removeEpisode(Episode episode) {
        episodes.remove(episode);
        episode.setSeason(null);
    }

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