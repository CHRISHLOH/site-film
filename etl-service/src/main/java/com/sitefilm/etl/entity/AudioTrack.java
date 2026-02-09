package com.sitefilm.etl.entity;

import com.sitefilm.etl.entity.directories.Language;
import com.sitefilm.etl.entity.enums.AudioTrackType;
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
        name = "audio_tracks",
        schema = "content_service"
)
public class AudioTrack{
    @Id
    private Long id;

    @NotNull
    @Column("language_id")
    private Long languageId;

    @NotNull
    @Size(max = 255)
    @Column("studio_name")
    private String studioName;

    @Column("track_type")
    private AudioTrackType trackType;

    @Column("display_order")
    private Integer displayOrder;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}