package com.sitefilm.etl.service.core;

import java.util.List;

public interface LoadStrategy {

    List<?> loadTmdb(Integer pageNumber);
}
