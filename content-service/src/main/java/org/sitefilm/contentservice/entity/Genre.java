package org.sitefilm.contentservice.entity;

import jakarta.persistence.*;
import lombok.*;


@Entity
@Table(name = "genres")
@Setter
@Getter
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Genre {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String genre;

}
