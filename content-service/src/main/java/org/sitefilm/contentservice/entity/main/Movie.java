package org.sitefilm.contentservice.entity.main;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.sitefilm.contentservice.configutation.DurationConverter;
import org.sitefilm.contentservice.entity.Country;
import org.sitefilm.contentservice.entity.Genre;
import org.sitefilm.contentservice.entity.MovieAudioLanguage;
import org.sitefilm.contentservice.entity.VideoQuality;


import java.time.Duration;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "movies", schema = "content_service")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Movie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String title;

    @Column(name = "original_title")
    private String originalTitle;

    @Column(columnDefinition = "TEXT")
    private String description;

    @Column(name = "release_date", nullable = false)
    private LocalDate releaseDate;

    @Column(name = "duration")
    @Convert(converter = DurationConverter.class)
    private Duration duration;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "country_id", nullable = false, referencedColumnName = "id")
    private Country country;

    @ManyToMany
    @JoinTable(
            schema = "content_service",
            name = "movie_genres",
            joinColumns = @JoinColumn(name = "movie_id"),
            inverseJoinColumns = @JoinColumn(name = "genre_id")
    )
    private Set<Genre> genres = new HashSet<>();

    @ManyToMany
    @JoinTable(
            schema = "content_service",
            name = "movie_audio",
            joinColumns = @JoinColumn(name = "movie_id"),
            inverseJoinColumns = @JoinColumn(name = "audio_id")
    )
    private Set<MovieAudioLanguage> audioMovieFormats;

    @ManyToMany
    @JoinTable(
            schema = "content_service",
            name = "movie_quality",
            joinColumns = @JoinColumn(name = "movie_id"),
            inverseJoinColumns = @JoinColumn(name = "quality_id")
    )
    private Set<VideoQuality> videoQuality;

    @Column(name = "created_at", nullable = false, updatable = false)
    @CreationTimestamp
    private LocalDate createdAt;

    @Column(name = "updated_at")
    @UpdateTimestamp
    private LocalDate updatedAt;
}