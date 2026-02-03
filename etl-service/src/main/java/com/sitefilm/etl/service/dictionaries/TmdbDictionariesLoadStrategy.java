package com.sitefilm.etl.service.dictionaries;

import com.sitefilm.etl.entity.directories.DictionariesEntity;

import java.util.List;
import java.util.Set;

public interface TmdbDictionariesLoadStrategy<T extends DictionariesEntity> {
    List<T> loadTmdb();
}
