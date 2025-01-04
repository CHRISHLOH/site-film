package org.sitefilm.contentservice.repository;

import org.sitefilm.contentservice.entity.main.MoviePerson;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.Set;

@Repository
public interface MoviePersonRepository extends JpaRepository<MoviePerson, Long> {

    @EntityGraph(value = "MoviePerson.withDetails", type = EntityGraph.EntityGraphType.LOAD)
    Set<MoviePerson> findAllByMovieId(Long movieId);

}
