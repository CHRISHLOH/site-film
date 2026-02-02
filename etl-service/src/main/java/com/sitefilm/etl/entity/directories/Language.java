package com.sitefilm.etl.entity.directories;

import io.hypersistence.utils.hibernate.type.json.JsonType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.hibernate.annotations.Type;

import java.util.HashMap;
import java.util.Map;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(
        name = "languages",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_languages_iso_code", columnList = "iso_code")
        },
        uniqueConstraints = {
                @UniqueConstraint(name = "uk_languages_iso_code", columnNames = "iso_code")
        }
)
public class Language extends  DictionariesEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "languages_seq")
    @SequenceGenerator(
            name = "languages_seq",
            sequenceName = "content_service.languages_id_seq",
            allocationSize = 50
    )
    private Long id;

    @NotNull
    @Size(min = 2, max = 3)
    @Column(name = "iso_code", nullable = false, unique = true, length = 3)
    private String isoCode;

    @NotNull
    @Size(max = 100)
    @Column(name = "native_name", nullable = false, length = 100)
    private String nativeName;
}