package com.sitefilm.etl.entity.franchise;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "franchise_translations",
        schema = "content_service"
)
public class FranchiseTranslation {
    @Id
    private Long id;

    @NotNull
    @Column("franchise_id")
    private Long franchiseId;

    @NotNull
    @Size(max = 5)
    @Column("locale")
    private String locale;

    @NotNull
    @Size(max = 255)
    @Column("name")
    private String name;

    @Column("description")
    private String description;

    @Size(max = 255)
    @Column("tagline")
    private String tagline;
}