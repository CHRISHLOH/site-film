package com.sitefilm.etl.entity.content.series;

import com.sitefilm.etl.entity.enums.SeriesStatus;

import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.LocalDate;
import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "series_details", schema = "content_service")
public class SeriesDetail{
    @Id
    private Long id;

    @Column("content_id")
    private Integer contentId;

    @Column("total_seasons")
    private Integer totalSeasons;

    @Column("total_episodes")
    private Integer totalEpisodes;

    @Column("average_episode_duration")
    private Integer averageEpisodeDuration;

    @Column("end_date")
    private LocalDate endDate;

    @Column("series_status")
    private SeriesStatus seriesStatus;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}