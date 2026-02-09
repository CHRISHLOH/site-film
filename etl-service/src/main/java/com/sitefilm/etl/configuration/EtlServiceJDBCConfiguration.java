package com.sitefilm.etl.configuration;

import com.sitefilm.etl.configuration.convert.JsonbToMapConverter;
import com.sitefilm.etl.configuration.convert.MapToJsonbConverter;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jdbc.repository.config.AbstractJdbcConfiguration;

import java.util.List;

@Configuration
public class EtlServiceJDBCConfiguration extends AbstractJdbcConfiguration {
    @Override
    protected List<?> userConverters() {
        return List.of(
                new MapToJsonbConverter(),
                new JsonbToMapConverter()
        );
    }
}
