package com.sitefilm.etl.entity;

import com.sitefilm.etl.entity.enums.ContentStatus;
import com.sitefilm.etl.entity.enums.ContentType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
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
        name = "content",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_content_original_title", columnList = "original_title"),
                @Index(name = "idx_content_release_date", columnList = "release_date"),
                @Index(name = "idx_content_type", columnList = "content_type"),
                @Index(name = "idx_content_status", columnList = "status")
        }
)
public class Content extends AuditableEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(max = 255)
    @Column(name = "original_title", nullable = false)
    private String originalTitle;

    @NotNull
    @Enumerated(EnumType.STRING)
    @Column(name = "content_type", nullable = false, length = 50)
    private ContentType contentType;

    @Size(max = 255)
    @Column(name = "poster_url")
    private String posterUrl;

    @Column(name = "release_date")
    private LocalDate releaseDate;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", length = 30)
    @Builder.Default
    private ContentStatus status = ContentStatus.DRAFT;

    @Size(max = 3)
    @Column(name = "age_rating", length = 3)
    private String ageRating;

    @Column(name = "budget")
    private Long budget;

    @Column(name = "box_office")
    private Long boxOffice;

    @OneToOne(mappedBy = "content", cascade = CascadeType.ALL, fetch = FetchType.LAZY, optional = true)
    private MovieDetail movieDetail;

    @OneToOne(mappedBy = "content", cascade = CascadeType.ALL, fetch = FetchType.LAZY, optional = true)
    private SeriesDetail seriesDetail;

    @OneToOne(mappedBy = "content", cascade = CascadeType.ALL, fetch = FetchType.LAZY, optional = true)
    private ContentStatistic statistic;

    @OneToMany(mappedBy = "content", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<ContentTranslation> translations = new HashSet<>();

    @OneToMany(mappedBy = "content", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<ContentGenre> genres = new HashSet<>();

    @OneToMany(mappedBy = "content", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<ContentCountry> countries = new HashSet<>();

    @OneToMany(mappedBy = "content", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<ContentLanguage> languages = new HashSet<>();

    @OneToMany(mappedBy = "content", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<ContentPerson> persons = new HashSet<>();

    @OneToMany(mappedBy = "content")
    @Builder.Default
    private Set<Season> seasons = new HashSet<>();
}