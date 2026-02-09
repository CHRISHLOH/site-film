package com.sitefilm.etl.repository.dictioanries;

import com.sitefilm.etl.entity.directories.Career;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CareerRepository extends ListCrudRepository<Career, Long> {
}
