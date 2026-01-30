package com.sitefilm.etl.repository.core;

import com.sitefilm.etl.entity.content.movie.MovieDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MovieRepository extends JpaRepository<MovieDetail, Long> {
}
