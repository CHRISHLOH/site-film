package org.sitefilm.userservice.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "rating", schema = "user_service")
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserRating {
    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(name = "movie_id", nullable = false)
    private Integer movieId;

    @Column(name = "score", nullable = false)
    private Short score;

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;
}
