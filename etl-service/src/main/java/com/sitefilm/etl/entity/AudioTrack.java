package com.sitefilm.etl.entity;

import com.sitefilm.etl.entity.enums.AudioTrackType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

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
public class AudioTrack extends AuditableEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof AudioTrack)) return false;
        AudioTrack that = (AudioTrack) o;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}