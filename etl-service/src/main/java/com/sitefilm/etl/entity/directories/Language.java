package com.sitefilm.etl.entity.directories;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Embedded;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(
        name = "languages",
        schema = "content_service"
)
public class Language{
    @Id
    private Long id;

    @NotNull
    @Size(min = 2, max = 3)
    @Column("iso_code")
    private String isoCode;

    @Embedded(onEmpty = Embedded.OnEmpty.USE_NULL)
    private Translation translation;
}