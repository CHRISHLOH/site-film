package org.sitefilm.contentservice.entity;


import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@Entity
@Table(name = "audio_language", schema = "content_service")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class MovieAudioLanguage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "iso_code", nullable = false, unique = true, length = 5)
    private String isoCode; // en, ru, es, fr, de, etc.

    @OneToMany(mappedBy = "language", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<MovieAudioLanguageTranslation> translations = new ArrayList<>();
}
