package org.sitefilm.contentservice.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "country_translations", schema = "content_service",
        uniqueConstraints = @UniqueConstraint(columnNames = {"country_id", "language_code"}))
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CountryTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "country_id", nullable = false)
    private Country country;

    @Column(name = "language_code", nullable = false, length = 5)
    private String languageCode;

    @Column(name = "name", nullable = false)
    private String name;
}
