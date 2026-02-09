package com.sitefilm.etl.repository.dictioanries;

import com.sitefilm.etl.entity.directories.Country;
import org.springframework.data.repository.ListCrudRepository;

public interface CountryRepository extends ListCrudRepository<Country, Long> {
}
