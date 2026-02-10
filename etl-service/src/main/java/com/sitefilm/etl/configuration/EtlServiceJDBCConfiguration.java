package com.sitefilm.etl.configuration;

import com.sitefilm.etl.configuration.convert.CareerTypeToSmallIntConverter;
import com.sitefilm.etl.configuration.convert.JsonbToMapConverter;
import com.sitefilm.etl.configuration.convert.MapToJsonbConverter;
import com.sitefilm.etl.configuration.convert.SmallIntToCareerTypeConverter;
import jakarta.validation.constraints.NotNull;
import lombok.SneakyThrows;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jdbc.repository.config.AbstractJdbcConfiguration;

import java.util.List;

@Configuration
public class EtlServiceJDBCConfiguration extends AbstractJdbcConfiguration {
    @Override
    protected List<?> userConverters() {
        return List.of(
                new MapToJsonbConverter(),
                new JsonbToMapConverter(),
                new SmallIntToCareerTypeConverter(),
                new CareerTypeToSmallIntConverter()
        );
    }
}
