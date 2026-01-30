package com.sitefilm.etl.entity.video.relationship;

import com.sitefilm.etl.entity.AudioTrack;
import com.sitefilm.etl.entity.video.VideoFile;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "video_file_audio_tracks",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_vfat_audio", columnList = "audio_track_id")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_video_file_audio_track",
                        columnNames = {"video_file_id", "audio_track_id"}
                )
        }
)
public class VideoFileAudioTrack {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "video_file_id", nullable = false)
    private VideoFile videoFile;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "audio_track_id", nullable = false)
    private AudioTrack audioTrack;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof VideoFileAudioTrack that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}