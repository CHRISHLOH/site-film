package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NonNull;

import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;
import org.jetbrains.annotations.NotNull;

import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "audio_tracks", schema = "content_service")
public class AudioTrack {
    @Id
    @ColumnDefault("nextval('content_service.audio_tracks_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @NonNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "language_id", nullable = false)
    private Language language;

    @Size(max = 255)
    @NonNull
    @Column(name = "studio_name", nullable = false)
    private String studioName;

    @jakarta.validation.constraints.Size(max = 50)
    @Column(name = "track_type", length = 50)
    private String trackType;

    @ColumnDefault("0")
    @Column(name = "display_order")
    private Integer displayOrder;

    @jakarta.validation.constraints.NotNull
    @ColumnDefault("now()")
    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

    @ColumnDefault("now()")
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

}