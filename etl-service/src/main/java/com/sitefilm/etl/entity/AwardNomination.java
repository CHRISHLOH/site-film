package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.LocalDate;
import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "award_nominations", schema = "content_service")
public class AwardNomination {
    @Id
    @ColumnDefault("nextval('content_service.award_nominations_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @jakarta.validation.constraints.NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @jakarta.validation.constraints.NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "category_id", nullable = false)
    private AwardCategory category;

    @jakarta.validation.constraints.Size(max = 255)
    @Column(name = "work_title")
    private String workTitle;

    @jakarta.validation.constraints.NotNull
    @Column(name = "year", nullable = false)
    private Integer year;

    @Column(name = "edition_number")
    private Integer editionNumber;

    @ColumnDefault("false")
    @Column(name = "is_winner")
    private Boolean isWinner;

    @Column(name = "ceremony_date")
    private LocalDate ceremonyDate;

    @Column(name = "notes", length = Integer.MAX_VALUE)
    private String notes;

    @jakarta.validation.constraints.NotNull
    @ColumnDefault("now()")
    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

}