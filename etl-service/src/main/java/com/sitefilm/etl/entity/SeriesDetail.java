package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.LocalDate;
import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "series_details", schema = "content_service")
public class SeriesDetail {
    @Id
    @Column(name = "content_id", nullable = false)
    private Long id;

    @MapsId
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @ColumnDefault("0")
    @Column(name = "total_seasons")
    private Integer totalSeasons;

    @ColumnDefault("0")
    @Column(name = "total_episodes")
    private Integer totalEpisodes;

    @Column(name = "average_episode_duration")
    private Integer averageEpisodeDuration;

    @Column(name = "end_date")
    private LocalDate endDate;

    @Size(max = 20)
    @Column(name = "series_status", length = 20)
    private String seriesStatus;

    @NotNull
    @ColumnDefault("now()")
    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

    @ColumnDefault("now()")
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

}