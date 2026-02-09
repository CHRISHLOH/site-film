package com.sitefilm.etl.repository.dictioanries;

import com.sitefilm.etl.entity.directories.Genre;
import org.springframework.data.repository.ListCrudRepository;

public interface GenreRepository extends ListCrudRepository<Genre,Long> {
}
