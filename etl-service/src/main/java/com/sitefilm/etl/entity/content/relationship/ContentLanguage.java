package com.sitefilm.etl.entity.content.relationship;

import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.directories.Language;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "content_languages",
        schema = "content_service"
)
public class ContentLanguage {
    @NotNull
    @Column("content_id")
    private Long contentId;

    @NotNull
    @Column("language_id")
    private Long languageId;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;
}