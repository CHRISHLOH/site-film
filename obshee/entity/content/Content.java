package com.sitefilm.etl.entity.content;

import com.sitefilm.etl.entity.enums.ContentType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.LocalDate;
import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(
        name = "content",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_content_original_title", columnList = "original_title"),
                @Index(name = "idx_content_release_date", columnList = "release_date"),
                @Index(name = "idx_content_type", columnList = "content_type"),
                @Index(name = "idx_content_status", columnList = "status")
        }
)
public class Content{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(max = 255)
    @Column(name = "original_title", nullable = false)
    private String originalTitle;

    @NotNull
    @Enumerated(EnumType.STRING)
    @Column(name = "content_type", nullable = false, length = 50)
    private ContentType contentType;

    @Size(max = 255)
    @Column(name = "poster_url")
    private String posterUrl;

    @Column(name = "release_date")
    private LocalDate releaseDate;

    @Column(name = "status", length = 30)
    private String status;

    @Size(max = 3)
    @Column(name = "age_rating", length = 3)
    private String ageRating;

    @Column(name = "budget")
    private Long budget;

    @Column(name = "box_office")
    private Long boxOffice;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;
}