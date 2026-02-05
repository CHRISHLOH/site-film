package com.sitefilm.etl.entity.person.relationship;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "person_translations",
        schema = "content_service"
)
public class PersonTranslation{

    @Id
    private Long id;

    @NotNull
    @Column("person_id")
    private Long personId;

    @NotNull
    @Size(max = 10)
    @Column("locale")
    private String locale;

    @Size(max = 100)
    @Column("locale_name")
    private String localeName;

    @Column("biography")
    private String biography;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}