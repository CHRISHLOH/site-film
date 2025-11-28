package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.LocalDate;
import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "seasons", schema = "content_service")
public class Season {
    @Id
    @ColumnDefault("nextval('content_service.seasons_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @Column(name = "season_number", nullable = false)
    private Integer seasonNumber;

    @Column(name = "poster_url", length = Integer.MAX_VALUE)
    private String posterUrl;

    @Column(name = "release_date")
    private LocalDate releaseDate;

    @ColumnDefault("0")
    @Column(name = "episodes_count")
    private Integer episodesCount;

    @NotNull
    @ColumnDefault("now()")
    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

    @ColumnDefault("now()")
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

}