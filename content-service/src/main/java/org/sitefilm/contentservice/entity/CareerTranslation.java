package org.sitefilm.contentservice.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "career_translations", schema = "content_service",
        uniqueConstraints = @UniqueConstraint(columnNames = {"career_id", "language_code"}))
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CareerTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "career_id", nullable = false)
    private Career career;

    @Column(name = "language_code", nullable = false, length = 5)
    private String languageCode; // en, ru, es, etc.

    @Column(name = "name", nullable = false)
    private String name;
}
