package com.sitefilm.etl.entity.content.series;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "season_translations",
        schema = "content_service"
)
public class SeasonTranslation{
    @Id
    private Long id;

    @NotNull
    @Column("season_id")
    private Long seasonId;

    @NotNull
    @Size(max = 5)
    @Column("locale")
    private String locale;

    @Size(max = 255)
    @Column("title")
    private String title;

    @Column("description")
    private String description;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}