package com.sitefilm.etl.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "video_files", schema = "content_service")
public class VideoFile {
    @Id
    @ColumnDefault("nextval('content_service.video_files_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @NotNull
    @Column(name = "manifest_url", nullable = false, length = Integer.MAX_VALUE)
    private String manifestUrl;

    @Column(name = "duration_seconds")
    private Integer durationSeconds;

    @NotNull
    @ColumnDefault("now()")
    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

}