package com.sitefilm.etl.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.Hibernate;

import java.util.Objects;

@Getter
@Setter
@Embeddable
public class VideoFileAudioTrackId implements java.io.Serializable {

    @NotNull
    @Column(name = "video_file_id", nullable = false)
    private Long videoFileId;

    @jakarta.validation.constraints.NotNull
    @Column(name = "audio_track_id", nullable = false)
    private Long audioTrackId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        VideoFileAudioTrackId entity = (VideoFileAudioTrackId) o;
        return Objects.equals(this.audioTrackId, entity.audioTrackId) &&
                Objects.equals(this.videoFileId, entity.videoFileId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(audioTrackId, videoFileId);
    }

}