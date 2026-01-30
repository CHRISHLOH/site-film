package com.sitefilm.etl.entity.content.relationship;

import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.directories.Genre;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "content_genres",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_content_genres_genre", columnList = "genre_id"),
                @Index(name = "idx_content_genres_content_order", columnList = "content_id, display_order")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_content_genre",
                        columnNames = {"content_id", "genre_id"}
                )
        }
)
public class ContentGenre {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "genre_id", nullable = false)
    private Genre genre;

    @Column(name = "display_order")
    @Builder.Default
    private Short displayOrder = 0;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ContentGenre that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}