package com.sitefilm.etl.entity;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.math.BigDecimal;
import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "content_statistics",
        schema = "content_service"
)
public class ContentStatistic {

    @Id
    private Long id;

    @Column("content_id")
    private Long contentId;

    @NotNull
    @Column("votes_count")
    private Long votesCount;

    @NotNull
    @Column("rating_sum")
    private Long ratingSum ;

    @Column("imdb_rating")
    private BigDecimal imdbRating;

    @Column("kinopoisk_rating")
    private BigDecimal kinopoiskRating;

    @NotNull
    @Column("average_rating")
    private BigDecimal averageRating = BigDecimal.ZERO;

    @NotNull
    @Column("last_updated_at")
    private OffsetDateTime lastUpdatedAt = OffsetDateTime.now();

    @Column("last_processed_kafka_offset")
    private Long lastProcessedKafkaOffset;

    @Column("calculation_version")
    private Long calculationVersion;

}