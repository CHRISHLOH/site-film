package com.sitefilm.etl.entity.video.relationship;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "video_file_audio_tracks",
        schema = "content_service"
)
public class VideoFileAudioTrack {
    @NotNull
    @Column("video_file_id")
    private Long videoFileId;

    @NotNull
    @Column("audio_track_id")
    private Long audioTrack;
}