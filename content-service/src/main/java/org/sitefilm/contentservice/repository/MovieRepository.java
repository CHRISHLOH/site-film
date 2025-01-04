package org.sitefilm.contentservice.repository;

import org.sitefilm.contentservice.entity.main.Movie;
import org.sitefilm.contentservice.entity.projection.MinimalMovieProjection;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.Set;

@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {

    @Query("SELECT m FROM Movie m " +
            "LEFT JOIN FETCH m.genres " +
            "LEFT JOIN FETCH m.country " +
            "LEFT JOIN FETCH m.audioMovieFormats " +
            "LEFT JOIN FETCH m.videoQuality " +
            "WHERE m.id = :id")
    Optional<Movie> findMovieWithDetailsById(@Param("id") Long id);

    @Query("""
    SELECT m.id AS id,
           m.title AS title,
           m.description AS description,
           m.originalTitle AS originalTitle,
           m.releaseDate AS releaseDate
    FROM Movie m
    JOIN MoviePerson mp ON m.id = mp.movie.id
    WHERE mp.person.id = :personId
    ORDER BY mp.moviePriorityLevel
    LIMIT 10
    """)
    List<MinimalMovieProjection> findMoviesByPersonId(@Param("personId") Long personId);

    @Query("""
    SELECT m.id AS id,
           m.title AS title,
           m.description AS description,
           m.originalTitle AS originalTitle,
           m.releaseDate AS releaseDate
    FROM Movie m
    """)
    Slice<MinimalMovieProjection> findListMinimalMovies(Pageable pageable);
}