package com.sitefilm.etl.entity.content.relationship;

import com.sitefilm.etl.entity.directories.Genre;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "content_genres",
        schema = "content_service"
)
public class ContentGenre {
    @NotNull
    @Column("content_id")
    private Long contentId;

    @NotNull
    @Column("genre_id")
    private Long genreId;

    @Column("display_order")
    private Short displayOrder;
}