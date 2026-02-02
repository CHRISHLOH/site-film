package com.sitefilm.etl.entity.directories;

import io.hypersistence.utils.hibernate.type.json.JsonType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.hibernate.annotations.Type;

import java.util.HashMap;
import java.util.Map;

@ToString
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(
        name = "genres",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_genres_genre", columnList = "genre")
        }
)
public class Genre extends DictionariesEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "genres_seq")
    @SequenceGenerator(
            name = "genres_seq",
            sequenceName = "content_service.genres_id_seq",
            allocationSize = 50
    )
    private Long id;

    @NotNull
    @Column(name = "external_id")
    private Integer externalId;

}