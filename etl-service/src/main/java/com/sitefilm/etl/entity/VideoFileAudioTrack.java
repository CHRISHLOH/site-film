package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "video_file_audio_tracks", schema = "content_service")
public class VideoFileAudioTrack {
    @EmbeddedId
    private VideoFileAudioTrackId id;

    @MapsId("videoFileId")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "video_file_id", nullable = false)
    private VideoFile videoFile;

    @MapsId("audioTrackId")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "audio_track_id", nullable = false)
    private AudioTrack audioTrack;

}