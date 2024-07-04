package org.sitefilm.contentservice.entity;

import jakarta.persistence.*;
import lombok.*;


@Entity
@Table(name = "actors")
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Actor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "age", nullable = false)
    private Byte age;

    @Column(name = "first_name", nullable = false)
    private String firstName;

    @Column(name = "last_name", nullable = false)
    private String lastName;
}
