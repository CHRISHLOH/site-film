package com.sitefilm.etl.entity;

import com.sitefilm.etl.entity.enums.SeriesStatus;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "series_details", schema = "content_service")
public class SeriesDetail extends AuditableEntity {

    @Id
    @Column(name = "content_id")
    private Long id;

    @MapsId
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @Column(name = "total_seasons")
    @Builder.Default
    private Integer totalSeasons = 0;

    @Column(name = "total_episodes")
    @Builder.Default
    private Integer totalEpisodes = 0;

    @Column(name = "average_episode_duration")
    private Integer averageEpisodeDuration;

    @Column(name = "end_date")
    private LocalDate endDate;

    @Enumerated(EnumType.STRING)
    @Column(name = "series_status", length = 20)
    private SeriesStatus seriesStatus;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof SeriesDetail that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}