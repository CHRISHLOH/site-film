package org.sitefilm.contentservice.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "countries", schema = "content_service")
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Country {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "iso_code", nullable = false, unique = true, length = 2)
    private String isoCode; // US, RU, FR, etc.

    @OneToMany(mappedBy = "country", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<CountryTranslation> translations = new ArrayList<>();

    @OneToMany(mappedBy = "country")
    private Set<City> cities = new HashSet<>();
}
