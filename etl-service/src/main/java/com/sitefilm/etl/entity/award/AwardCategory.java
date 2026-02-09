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
        name = "award_categories",
        schema = "content_service"
)
public class AwardCategory{
    @Id
    private Long id;

    @NotNull
    @Column("award_id")
    private Long awardId;

    @NotNull
    @Size(max = 100)
    @Column("machine_name")
    private String machineName;

    @Column("translations")
    Map<String, String> translations;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;
}