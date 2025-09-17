package org.sitefilm.contentservice.entity.main.person;

import jakarta.persistence.*;
import lombok.*;
import org.sitefilm.contentservice.entity.City;
import org.sitefilm.contentservice.entity.Country;
import org.sitefilm.contentservice.entity.Career;
import org.sitefilm.contentservice.entity.Genre;
import org.sitefilm.contentservice.enums.GenderEnum;

import java.time.LocalDate;
import java.util.Set;

@Entity
@Table(name = "persons", schema = "content_service")
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Person {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name", nullable = false)
    private String firstName;

    @Column(name = "last_name", nullable = false)
    private String lastName;

    @Column(name = "birth_date", nullable = false)
    private LocalDate birth_date;

    @Enumerated(EnumType.STRING)
    @Column(name = "gender", nullable = false)
    private GenderEnum gender;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "country_id", nullable = false, referencedColumnName = "id")
    private Country country;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "city_id", nullable = false, referencedColumnName = "id")
    private City city;

    @ManyToMany
    @JoinTable(
            schema = "content_service",
            name = "person_genres",
            joinColumns = @JoinColumn(name = "person_id"),
            inverseJoinColumns = @JoinColumn(name = "genre_id")
    )
    private Set<Genre> genres;

    @ManyToMany
    @JoinTable(
            schema = "content_service",
            name = "person_careers",
            joinColumns = @JoinColumn(name = "person_id"),
            inverseJoinColumns = @JoinColumn(name = "career_id")
    )
    private Set<Career> careers;
}
