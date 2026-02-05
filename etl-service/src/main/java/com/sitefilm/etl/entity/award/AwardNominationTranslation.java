package com.sitefilm.etl.entity.award;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "award_nomination_translations",
        schema = "content_service"
)
public class AwardNominationTranslation {
    @NotNull
    @Column("nomination_id")
    private Long nomination;

    @NotNull
    @Size(max = 5)
    @Column("locale")
    private String locale;

    @Size(max = 255)
    @Column("work_title")
    private String workTitle;

    @Column("notes")
    private String notes;
}