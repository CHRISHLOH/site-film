package com.sitefilm.etl.entity.award;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;
import java.util.Map;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "awards",
        schema = "content_service"
)
public class Award {
    @Id
    private Long id;

    @NotNull
    @Size(max = 100)
    @Column("machine_name")
    private String machineName;

    @Column("logo_url")
    private String logoUrl;

    @Column("country_id")
    private Long countryId;

    @Column("founded_year")
    private Integer foundedYear;

    @Column("translations")
    Map<String, String> translations;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;
}