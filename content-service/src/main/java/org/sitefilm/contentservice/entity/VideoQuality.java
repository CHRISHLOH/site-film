package org.sitefilm.contentservice.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "video_quality", schema = "content_service")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class VideoQuality {
    @Id
    private Long id;

    @Column(name = "movie_quality")
    private String videoQuality;
}
