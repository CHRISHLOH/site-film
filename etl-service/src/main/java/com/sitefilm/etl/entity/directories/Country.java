package com.sitefilm.etl.entity.directories;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Embedded;
import org.springframework.data.relational.core.mapping.Table;

@ToString
@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(
        name = "countries",
        schema = "content_service"
)
public class Country{
    @Id

    private Long id;

    @NotNull
    @Size(min = 2, max = 2)
    @Column("iso_code")
    private String isoCode;

    @Embedded(onEmpty = Embedded.OnEmpty.USE_NULL)
    private Translation translation;
}