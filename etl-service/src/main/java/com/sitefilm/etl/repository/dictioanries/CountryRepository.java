package com.sitefilm.etl.repository.dictioanries;

import com.sitefilm.etl.entity.directories.Country;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CountryRepository extends JpaRepository<Country, Long> {
}
