package com.sitefilm.etl.entity;

import com.sitefilm.etl.entity.content.Content;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.math.BigDecimal;
import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "content_statistics",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_content_statistics_rating", columnList = "average_rating")
        }
)
public class ContentStatistic {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "content_statistic_seq")
    @SequenceGenerator(
            name = "content_statistic_seq",
            sequenceName = "content_service.content_statistic_id_seq",
            allocationSize = 50
    )
    private Long id;

    @MapsId
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @Column(name = "votes_count", nullable = false)
    @Builder.Default
    private Long votesCount = 0L;

    @NotNull
    @Column(name = "rating_sum", nullable = false)
    @Builder.Default
    private Long ratingSum = 0L;

    @Column(name = "imdb_rating", precision = 3, scale = 1)
    private BigDecimal imdbRating;

    @Column(name = "kinopoisk_rating", precision = 3, scale = 1)
    private BigDecimal kinopoiskRating;

    @NotNull
    @Column(name = "average_rating", nullable = false, precision = 4, scale = 2)
    @Builder.Default
    private BigDecimal averageRating = BigDecimal.ZERO;

    @NotNull
    @Column(name = "last_updated_at", nullable = false)
    @Builder.Default
    private OffsetDateTime lastUpdatedAt = OffsetDateTime.now();

    @Column(name = "last_processed_kafka_offset")
    private Long lastProcessedKafkaOffset;

    @Version
    @Column(name = "calculation_version")
    @Builder.Default
    private Long calculationVersion = 1L;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ContentStatistic that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}