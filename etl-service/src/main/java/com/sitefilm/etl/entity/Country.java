package com.sitefilm.etl.entity;

import io.hypersistence.utils.hibernate.type.json.JsonType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.annotations.Type;
import org.hibernate.type.SqlTypes;

import java.util.HashMap;
import java.util.Map;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "countries",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_countries_iso_code", columnList = "iso_code")
        }
)
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(min = 2, max = 2)
    @Column(name = "iso_code", nullable = false, unique = true, length = 2)
    private String isoCode;

    @NotNull
    @Type(JsonType.class)
    @Column(name = "translations", nullable = false, columnDefinition = "jsonb")
    @Builder.Default
    private Map<String, String> translations = new HashMap<>();

}