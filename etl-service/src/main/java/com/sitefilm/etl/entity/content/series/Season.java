package com.sitefilm.etl.entity.content.series;

import com.sitefilm.etl.entity.content.Content;
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
        name = "seasons",
        schema = "content_service"
)
public class Season{

    @Id
    private Long id;

    @NotNull
    @Column("content_id")
    private Long contentId;

    @NotNull
    @Column("season_number")
    private Integer seasonNumber;

    @Column("poster_url")
    private String posterUrl;

    @Column("release_date")
    private LocalDate releaseDate;

    @Column("episodes_count")
    private Integer episodesCount;

    @Column("external_id")
    private Integer external_id;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;

}