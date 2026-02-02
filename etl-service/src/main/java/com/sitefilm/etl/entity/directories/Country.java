package com.sitefilm.etl.entity.directories;

import io.hypersistence.utils.hibernate.type.json.JsonType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.hibernate.annotations.Type;

import java.util.HashMap;
import java.util.Map;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(
        name = "countries",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_countries_iso_code", columnList = "iso_code")
        }
)
public class Country extends DictionariesEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "countries_seq")
    @SequenceGenerator(
            name = "countries_seq",
            sequenceName = "content_service.countries_id_seq",
            allocationSize = 50
    )
    private Long id;

    @NotNull
    @Size(min = 2, max = 2)
    @Column(name = "iso_code", nullable = false, unique = true, length = 2)
    private String isoCode;

}