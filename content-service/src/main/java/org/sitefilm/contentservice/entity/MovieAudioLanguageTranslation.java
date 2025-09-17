package org.sitefilm.contentservice.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "language_translations", schema = "content_service",
        uniqueConstraints = @UniqueConstraint(columnNames = {"language_id", "language_code"}))
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class MovieAudioLanguageTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "language_id", nullable = false)
    private MovieAudioLanguage language;

    @Column(name = "language_code", nullable = false, length = 5)
    private String languageCode;

    @Column(name = "name", nullable = false)
    private String name;
}
