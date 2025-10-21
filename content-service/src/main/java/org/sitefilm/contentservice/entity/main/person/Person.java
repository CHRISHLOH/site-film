package org.sitefilm.contentservice.entity.main.person;

import jakarta.persistence.*;
import lombok.*;
import org.sitefilm.contentservice.entity.City;
import org.sitefilm.contentservice.entity.Country;
import org.sitefilm.contentservice.entity.Career;
import org.sitefilm.contentservice.entity.Genre;
import org.sitefilm.contentservice.enums.GenderEnum;

import java.time.LocalDate;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "persons", schema = "content_service")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Person {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // единое имя, можно хранить full name; локализованное представление -> person_translations.locale_name
    @Column(name = "name", nullable = false, length = 100)
    private String name;

    @Column(name = "birth_date", nullable = false)
    private LocalDate birthDate;

    @Column(name = "gender", nullable = false, length = 50)
    private String gender;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "country_id", nullable = false)
    private Country country;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "city_id", nullable = false)
    private City city;

    @OneToMany(mappedBy = "person", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private Set<PersonTranslation> translations = new HashSet<>();
}
