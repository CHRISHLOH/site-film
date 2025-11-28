package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "award_nomination_translations", schema = "content_service")
public class AwardNominationTranslation {
    @EmbeddedId
    private AwardNominationTranslationId id;

    @MapsId("nominationId")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "nomination_id", nullable = false)
    private AwardNomination nomination;

    @jakarta.validation.constraints.Size(max = 255)
    @Column(name = "work_title")
    private String workTitle;

    @Column(name = "notes", length = Integer.MAX_VALUE)
    private String notes;

}