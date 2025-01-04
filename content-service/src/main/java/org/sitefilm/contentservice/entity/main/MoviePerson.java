package org.sitefilm.contentservice.entity.main;

import jakarta.persistence.*;
import lombok.*;
import org.sitefilm.contentservice.entity.Career;
import org.sitefilm.contentservice.enums.PriorityLevel;

@Entity
@Table(name = "movie_persons", schema = "content_service")
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MoviePerson {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movie_id", nullable = false)
    private Movie movie;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "career_id", nullable = false)
    private Career career;

    @Enumerated(EnumType.ORDINAL)
    @Column(name = "persons_priority", nullable = false)
    private PriorityLevel actorPriorityLevel;

    @Enumerated(EnumType.ORDINAL)
    @Column(name = "movie_priority", nullable = false)
    private PriorityLevel moviePriorityLevel;
}