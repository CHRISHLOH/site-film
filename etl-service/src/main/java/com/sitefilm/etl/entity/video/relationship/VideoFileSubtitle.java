package com.sitefilm.etl.entity.video.relationship;

import com.sitefilm.etl.entity.directories.Language;
import com.sitefilm.etl.entity.enums.SubtitleType;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(
        name = "video_file_subtitles",
        schema = "content_service"
)
public class VideoFileSubtitle {

    @Id
    private Long id;

    @NotNull
    @Column("video_file_id")
    private Long videoFileId;

    @NotNull
    @Column("language_id")
    private Language language;

    @NotNull
    @Size(max = 255)
    @Column("author_name")
    private String authorName;

    @Column("subtitle_type")
    private SubtitleType subtitleType;

    @NotNull
    @Column("url")
    private String url;

    @Column("is_default")
    private Boolean isDefault;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;
}