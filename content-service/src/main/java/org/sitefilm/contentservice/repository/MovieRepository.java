package org.sitefilm.contentservice.repository;

import org.sitefilm.contentservice.entity.main.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {
    @Query("SELECT m FROM Movie m WHERE m.id IN (SELECT trm.movieId FROM TopRecommendedMovie trm)")
    List<Movie> getTopRecommendedMovies();

    Movie findMovieByTitle(String title);
    
}
