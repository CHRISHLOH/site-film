package com.sitefilm.etl.entity.directories;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Embedded;
import org.springframework.data.relational.core.mapping.Table;

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

    @Embedded(onEmpty = Embedded.OnEmpty.USE_NULL)
    private Translation translation;
}