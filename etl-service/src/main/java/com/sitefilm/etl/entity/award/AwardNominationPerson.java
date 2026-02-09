package com.sitefilm.etl.entity.award;

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
        name = "award_nomination_persons",
        schema = "content_service"
)
public class AwardNominationPerson {
    @NotNull
    @Column("nomination_id")
    private Long nominationId;

    @NotNull
    @Column("person_id")
    private Long personId;

    @Column("career_id")
    private Short careerId;

    @Column("display_order")
    private Integer displayOrder;
}