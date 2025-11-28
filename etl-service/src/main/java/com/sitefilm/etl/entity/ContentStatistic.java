package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.math.BigDecimal;
import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "content_statistics", schema = "content_service")
public class ContentStatistic {
    @Id
    @Column(name = "content_id", nullable = false)
    private Long id;

    @MapsId
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @ColumnDefault("0")
    @Column(name = "votes_count", nullable = false)
    private Long votesCount;

    @NotNull
    @ColumnDefault("0")
    @Column(name = "rating_sum", nullable = false)
    private Long ratingSum;

    @Column(name = "imdb_rating", precision = 3, scale = 1)
    private BigDecimal imdbRating;

    @Column(name = "kinopoisk_rating", precision = 3, scale = 1)
    private BigDecimal kinopoiskRating;

    @NotNull
    @ColumnDefault("0")
    @Column(name = "average_rating", nullable = false, precision = 4, scale = 2)
    private BigDecimal averageRating;

    @NotNull
    @ColumnDefault("now()")
    @Column(name = "last_updated_at", nullable = false)
    private OffsetDateTime lastUpdatedAt;

    @Column(name = "last_processed_kafka_offset")
    private Long lastProcessedKafkaOffset;

    @ColumnDefault("1")
    @Column(name = "calculation_version")
    private Long calculationVersion;

}