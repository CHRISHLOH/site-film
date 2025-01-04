package org.sitefilm.contentservice.entity;

import jakarta.persistence.*;

@Entity
public class City {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "city", nullable = false)
    private String city;
}
