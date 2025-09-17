package org.sitefilm.contentservice.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "city_translations", schema = "content_service",
        uniqueConstraints = @UniqueConstraint(columnNames = {"city_id", "language_code"}))
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CityTranslation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "city_id", nullable = false)
    private City city;

    @Column(name = "language_code", nullable = false, length = 5)
    private String languageCode;

    @Column(name = "name", nullable = false)
    private String name;
}
