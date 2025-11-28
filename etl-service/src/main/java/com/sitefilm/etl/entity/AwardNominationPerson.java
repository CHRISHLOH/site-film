package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

@Getter
@Setter
@Entity
@Table(name = "award_nomination_persons", schema = "content_service")
public class AwardNominationPerson {
    @EmbeddedId
    private AwardNominationPersonId id;

    @MapsId("nominationId")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "nomination_id", nullable = false)
    private AwardNomination nomination;

    @MapsId("personId")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @Column(name = "career_id")
    private Short careerId;

    @ColumnDefault("0")
    @Column(name = "display_order")
    private Integer displayOrder;

}