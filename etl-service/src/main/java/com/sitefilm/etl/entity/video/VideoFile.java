package com.sitefilm.etl.entity.video;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "video_files", schema = "content_service")
public class VideoFile {

    @Id
    private Long id;
    @NotNull
    @Column("manifest_url")
    private String manifestUrl;

    @Column("duration_seconds")
    private Integer durationSeconds;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;
}