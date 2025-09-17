package org.sitefilm.contentservice.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "genre_translations", schema = "content_service",
        uniqueConstraints = @UniqueConstraint(columnNames = {"genre_id", "language_code"}))
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class GenreTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "genre_id", nullable = false)
    private Genre genre;

    @Column(name = "language_code", nullable = false, length = 5)
    private String languageCode;

    @Column(name = "name", nullable = false)
    private String name;
}
