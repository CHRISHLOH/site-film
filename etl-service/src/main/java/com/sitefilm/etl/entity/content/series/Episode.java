package com.sitefilm.etl.entity.content.series;

import jakarta.validation.constraints.NotNull;
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

@Table(
        name = "episodes",
        schema = "content_service"
)
public class Episode{

    @Id
    private Long id;

    @NotNull
    @Column("season_id")
    private Long seasonId;

    @NotNull
    @Column("episode_number")
    private Integer episodeNumber;

    @Column("duration_minutes")
    private Integer durationMinutes;

    @Column("air_date")
    private LocalDate airDate;

    @Column("external_id")
    private Integer externalId;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}