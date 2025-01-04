package org.sitefilm.contentservice.entity;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Entity
@Table(name = "audio_language", schema = "content_service")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class MovieAudioLanguage {

    @Id
    private Long id;

    @Column(name = "audio_language")
    private String audioLanguage;
}
