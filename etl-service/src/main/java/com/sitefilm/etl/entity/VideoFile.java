package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.OffsetDateTime;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@EntityListeners(AuditingEntityListener.class)
@Table(name = "video_files", schema = "content_service")
public class VideoFile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Column(name = "manifest_url", nullable = false, columnDefinition = "TEXT")
    private String manifestUrl;

    @Column(name = "duration_seconds")
    private Integer durationSeconds;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    // Relationships

    @OneToMany(mappedBy = "videoFile", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<VideoFileAudioTrack> audioTracks = new HashSet<>();

    @OneToMany(mappedBy = "videoFile", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<VideoFileSubtitle> subtitles = new HashSet<>();

    // Helper methods

    public void addAudioTrack(VideoFileAudioTrack audioTrack) {
        audioTracks.add(audioTrack);
        audioTrack.setVideoFile(this);
    }

    public void removeAudioTrack(VideoFileAudioTrack audioTrack) {
        audioTracks.remove(audioTrack);
        audioTrack.setVideoFile(null);
    }

    public void addSubtitle(VideoFileSubtitle subtitle) {
        subtitles.add(subtitle);
        subtitle.setVideoFile(this);
    }

    public void removeSubtitle(VideoFileSubtitle subtitle) {
        subtitles.remove(subtitle);
        subtitle.setVideoFile(null);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof VideoFile videoFile)) return false;
        return id != null && id.equals(videoFile.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}