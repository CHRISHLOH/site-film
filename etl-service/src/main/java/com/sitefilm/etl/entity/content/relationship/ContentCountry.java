package com.sitefilm.etl.entity.content.relationship;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "content_countries",
        schema = "content_service"
)
public class ContentCountry {
    @NotNull
    @Column("content_id")
    private Long contentId;

    @NotNull
    @Column("country_id")
    private Long countryId;
}