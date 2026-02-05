package com.sitefilm.etl.entity.content.relationship;

import com.sitefilm.etl.entity.content.Content;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "content_translations",
        schema = "content_service"

)
public class ContentTranslation {

    @Id
    private Long id;

    @Column("content_id")
    private Long contentId;

    @NotNull
    @Size(max = 5)
    @Column("locale")
    private String locale;

    @NotNull
    @Size(max = 255)
    @Column("title")
    private String title;

    @Column("description")
    private String description;

    @Column("plot_summary")
    private String plotSummary;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;

    @MappedCollection
    List<Content> contentList;
}