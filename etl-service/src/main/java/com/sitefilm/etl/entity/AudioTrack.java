package com.sitefilm.etl.entity;

import com.sitefilm.etl.entity.directories.Language;
import com.sitefilm.etl.entity.enums.AudioTrackType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "audio_tracks",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_audio_tracks_language", columnList = "language_id")
        }
)
public class AudioTrack{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "audio_track_seq")
    @SequenceGenerator(
            name = "audio_track_seq",
            sequenceName = "content_service.audio_track_id_seq",
            allocationSize = 50
    )
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "language_id", nullable = false)
    private Language language;

    @NotNull
    @Size(max = 255)
    @Column(name = "studio_name", nullable = false)
    private String studioName;

    @Enumerated(EnumType.STRING)
    @Column(name = "track_type", length = 50)
    private AudioTrackType trackType;

    @Column(name = "display_order")
    @Builder.Default
    private Integer displayOrder = 0;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AudioTrack that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}