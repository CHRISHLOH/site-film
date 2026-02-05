package com.sitefilm.etl.entity.content;

import com.sitefilm.etl.entity.enums.AgeRating;
import com.sitefilm.etl.entity.enums.ContentStatus;
import com.sitefilm.etl.entity.enums.ContentType;
import com.sitefilm.etl.entity.enums.Source;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
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
@Table(
        name = "content",
        schema = "content_service"
)
public class Content{

    @Id
    private Long id;

    @NotNull
    @Size(max = 255)
    @Column("original_title")
    private String originalTitle;

    @NotNull
    @Column("content_type")
    private ContentType contentType;

    @Size(max = 255)
    @Column("poster_url")
    private String posterUrl;

    @Column("release_date")
    private LocalDate releaseDate;

    @Column("status")
    private ContentStatus status;

    @Column("age_rating")
    private AgeRating ageRating;

    @Column("budget")
    private Long budget;

    @Column("box_office")
    private Long boxOffice;

    @Column("external_id")
    private String externalId;

    @Column("source")
    private Source source;

    @Column("duration")
    private Integer duration;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}