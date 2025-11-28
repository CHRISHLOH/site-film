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
@Table(name = "languages", schema = "content_service")
public class Language {
    @Id
    @ColumnDefault("nextval('content_service.languages_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @Size(max = 3)
    @NotNull
    @Column(name = "iso_code", nullable = false, length = 3)
    private String isoCode;

    @Size(max = 100)
    @NotNull
    @Column(name = "native_name", nullable = false, length = 100)
    private String nativeName;

    @NotNull
    @Column(name = "translations", nullable = false)
    @JdbcTypeCode(SqlTypes.JSON)
    private Map<String, Object> translations;

}