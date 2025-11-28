package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "content_persons", schema = "content_service")
public class ContentPerson {
    @Id
    @ColumnDefault("nextval('content_service.content_persons_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @jakarta.validation.constraints.NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @jakarta.validation.constraints.NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @jakarta.validation.constraints.NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "career_id", nullable = false)
    private Career career;

    @jakarta.validation.constraints.Size(max = 255)
    @Column(name = "character_name")
    private String characterName;

    @ColumnDefault("0")
    @Column(name = "display_order_in_content")
    private Integer displayOrderInContent;

    @ColumnDefault("0")
    @Column(name = "display_order_in_career")
    private Integer displayOrderInCareer;

    @jakarta.validation.constraints.NotNull
    @ColumnDefault("now()")
    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

    @ColumnDefault("now()")
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

}