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
@Table(name = "careers", schema = "content_service")
public class Career {
    @Id
    @ColumnDefault("nextval('content_service.careers_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @Size(max = 255)
    @NotNull
    @Column(name = "career", nullable = false)
    private String career;

    @NotNull
    @Column(name = "translations", nullable = false)
    @JdbcTypeCode(SqlTypes.JSON)
    private Map<String, Object> translations;

}