package com.sitefilm.etl.infrastructure.persistense.tmdb;

import java.sql.PreparedStatement;
import java.sql.SQLException;

@FunctionalInterface
public interface PreparedStatementBinder<T>  {
    void bind(PreparedStatement ps, T item) throws SQLException;
}
