package org.sitefilm.contentservice.entity.main.movie;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "movie_localizations", schema = "content_service")
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class MovieLocalization {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movie_id", nullable = false)
    private Movie movie;

    @Column(name = "locale", nullable = false, length = 5)
    private String locale; // en_US, ru_RU, etc.

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "original_title")
    private String originalTitle;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @Column(name = "plot_summary", columnDefinition = "TEXT")
    private String plotSummary;

    @Column(name = "created_at", nullable = false)
    @CreationTimestamp
    private LocalDateTime createdAt;

    @Column(name = "updated_at")
    @UpdateTimestamp
    private LocalDateTime updatedAt;
}
