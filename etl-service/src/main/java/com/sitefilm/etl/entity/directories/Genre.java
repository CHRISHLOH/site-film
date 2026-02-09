package com.sitefilm.etl.entity.directories;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.util.Map;

@ToString
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

@Table(
        name = "genres",
        schema = "content_service"
)
public class Genre{
    @Id
    private Long id;

    @NotNull
    @Column("external_id")
    private Integer externalId;

    @Column("translations")
    Map<String, String> translations;
}