package com.sitefilm.etl.entity.award;

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

    @Embedded(onEmpty = Embedded.OnEmpty.USE_NULL)
    private Translation translation;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;
}