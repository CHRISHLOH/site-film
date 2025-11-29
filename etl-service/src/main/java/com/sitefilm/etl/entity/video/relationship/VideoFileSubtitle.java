package com.sitefilm.etl.entity.video.relationship;

import com.sitefilm.etl.entity.directories.Language;
import com.sitefilm.etl.entity.enums.SubtitleType;
import com.sitefilm.etl.entity.video.VideoFile;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@EntityListeners(AuditingEntityListener.class)
@Table(
        name = "video_file_subtitles",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_subtitles_video_file", columnList = "video_file_id"),
                @Index(name = "idx_subtitles_language", columnList = "language_id"),
                @Index(name = "idx_subtitles_video_file_lang", columnList = "video_file_id, language_id")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_subtitle",
                        columnNames = {"video_file_id", "language_id", "author_name"}
                )
        }
)
public class VideoFileSubtitle {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "video_file_id", nullable = false)
    private VideoFile videoFile;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "language_id", nullable = false)
    private Language language;

    @NotNull
    @Size(max = 255)
    @Column(name = "author_name", nullable = false)
    private String authorName;

    @Enumerated(EnumType.STRING)
    @Column(name = "subtitle_type", length = 50)
    private SubtitleType subtitleType;

    @NotNull
    @Column(name = "url", nullable = false, columnDefinition = "TEXT")
    private String url;

    @Column(name = "is_default")
    private Boolean isDefault;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof VideoFileSubtitle that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}