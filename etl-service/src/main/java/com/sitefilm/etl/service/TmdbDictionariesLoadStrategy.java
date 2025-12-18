package com.sitefilm.etl.service;

import com.sitefilm.etl.entity.directories.DictionariesEntity;

import java.util.List;

public interface TmdbDictionariesLoadStrategy<T extends DictionariesEntity> {
    List<T> loadTmdb();
}
