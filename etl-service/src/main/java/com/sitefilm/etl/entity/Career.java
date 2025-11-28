package com.sitefilm.etl.entity;

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
@Builder
@Entity
@Table(
        name = "careers",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_careers_career", columnList = "career")
        }
)
public class Career {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(max = 255)
    @Column(name = "career", nullable = false, unique = true)
    private String career;

    @NotNull
    @Type(JsonType.class)
    @Column(name = "translations", nullable = false, columnDefinition = "jsonb")
    @Builder.Default
    private Map<String, String> translations = new HashMap<>();
}