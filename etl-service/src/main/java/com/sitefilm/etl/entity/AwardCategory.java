package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import java.time.OffsetDateTime;
import java.util.Map;

@Getter
@Setter
@Entity
@Table(name = "award_categories", schema = "content_service")
public class AwardCategory {
    @Id
    @ColumnDefault("nextval('content_service.award_categories_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "award_id", nullable = false)
    private Award award;

    @Size(max = 100)
    @NotNull
    @Column(name = "machine_name", nullable = false, length = 100)
    private String machineName;

    @NotNull
    @Column(name = "translations", nullable = false)
    @JdbcTypeCode(SqlTypes.JSON)
    private Map<String, Object> translations;

    @NotNull
    @ColumnDefault("now()")
    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

}