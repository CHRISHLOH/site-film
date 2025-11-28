package com.sitefilm.etl.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import java.util.Map;

@Getter
@Setter
@Entity
@Table(name = "countries", schema = "content_service")
public class Country {
    @Id
    @ColumnDefault("nextval('content_service.countries_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @Size(max = 2)
    @NotNull
    @Column(name = "iso_code", nullable = false, length = 2)
    private String isoCode;

    @jakarta.validation.constraints.NotNull
    @Column(name = "translations", nullable = false)
    @JdbcTypeCode(SqlTypes.JSON)
    private Map<String, Object> translations;

}