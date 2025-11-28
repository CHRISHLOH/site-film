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
        name = "episodes",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_episodes_season", columnList = "season_id"),
                @Index(name = "idx_episodes_number", columnList = "season_id, episode_number"),
                @Index(name = "idx_episodes_air_date", columnList = "air_date")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_episode",
                        columnNames = {"season_id", "episode_number"}
                )
        }
)
public class Episode extends AuditableEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "season_id", nullable = false)
    private Season season;

    @NotNull
    @Column(name = "episode_number", nullable = false)
    private Integer episodeNumber;

    @Column(name = "duration_minutes")
    private Integer durationMinutes;

    @Column(name = "air_date")
    private LocalDate airDate;

    // Relationships

    @OneToMany(mappedBy = "episode", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<EpisodeTranslation> translations = new HashSet<>();

    // Helper methods

    public void addTranslation(EpisodeTranslation translation) {
        translations.add(translation);
        translation.setEpisode(this);
    }

    public void removeTranslation(EpisodeTranslation translation) {
        translations.remove(translation);
        translation.setEpisode(null);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Episode episode)) return false;
        return id != null && id.equals(episode.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}