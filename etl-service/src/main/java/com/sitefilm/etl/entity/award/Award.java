package com.sitefilm.etl.entity.award;

import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.directories.Translation;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Embedded;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

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

    @Embedded(onEmpty = Embedded.OnEmpty.USE_NULL)
    private Translation translation;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;
}