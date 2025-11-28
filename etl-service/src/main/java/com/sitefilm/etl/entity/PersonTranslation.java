package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "person_translations", schema = "content_service")
public class PersonTranslation {
    @Id
    @ColumnDefault("nextval('content_service.person_translations_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @Size(max = 10)
    @NotNull
    @Column(name = "locale", nullable = false, length = 10)
    private String locale;

    @Size(max = 100)
    @Column(name = "locale_name", length = 100)
    private String localeName;

    @Size(max = 100)
    @Column(name = "locale_lastname", length = 100)
    private String localeLastname;

    @Column(name = "biography", length = Integer.MAX_VALUE)
    private String biography;

    @NotNull
    @ColumnDefault("now()")
    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

    @ColumnDefault("now()")
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

}