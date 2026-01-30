package com.sitefilm.etl.repository.dictioanries;

import com.sitefilm.etl.entity.directories.Genre;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GenreRepository extends JpaRepository<Genre,Long> {
}
