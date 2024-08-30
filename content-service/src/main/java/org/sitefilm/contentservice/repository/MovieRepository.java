package org.sitefilm.contentservice.repository;

import org.hibernate.annotations.HQLSelect;
import org.hibernate.annotations.processing.SQL;
import org.sitefilm.contentservice.dto.moviedto.MovieDto;
import org.sitefilm.contentservice.entity.Movie;
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
