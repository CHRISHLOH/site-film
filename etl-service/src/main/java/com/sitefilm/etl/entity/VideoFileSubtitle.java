package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "video_file_subtitles", schema = "content_service")
public class VideoFileSubtitle {
    @Id
    @ColumnDefault("nextval('content_service.video_file_subtitles_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "video_file_id", nullable = false)
    private VideoFile videoFile;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "language_id", nullable = false)
    private Language language;

    @Size(max = 255)
    @NotNull
    @Column(name = "author_name", nullable = false)
    private String authorName;

    @Size(max = 50)
    @Column(name = "subtitle_type", length = 50)
    private String subtitleType;

    @NotNull
    @Column(name = "url", nullable = false, length = Integer.MAX_VALUE)
    private String url;

    @ColumnDefault("false")
    @Column(name = "is_default")
    private Boolean isDefault;

    @NotNull
    @ColumnDefault("now()")
    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

}