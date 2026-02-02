package com.sitefilm.etl.entity.content.movie;

import com.sitefilm.etl.entity.content.Content;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.LocalDate;
import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "movie_details", schema = "content_service")
public class MovieDetail{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "movie_details_seq")
    @SequenceGenerator(
            name = "movie_details_seq",
            sequenceName = "content_service.movie_details_id_seq",
            allocationSize = 100
    )
    private Long id;

    @MapsId
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @Column(name = "duration_minutes", nullable = false)
    private Long durationMinutes;

    @Column(name = "cinema_release_date")
    private LocalDate cinemaReleaseDate;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof MovieDetail that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}