package com.sitefilm.etl.entity.award;

import com.sitefilm.etl.entity.content.Content;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.LocalDate;
import java.time.OffsetDateTime;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(
        name = "award_nominations",
        schema = "content_service"
)
public class AwardNomination {
    @Id
    private Long id;

    @NotNull
    @Column("content_id")
    private Long contentId;

    @NotNull
    @Column("category_id")
    private Long categoryId;

    @Size(max = 255)
    @Column("work_title")
    private String workTitle;

    @NotNull
    @Column("year")
    private Integer year;

    @Column("edition_number")
    private Integer editionNumber;

    @Column("is_winner")
    private Boolean isWinner;

    @Column("ceremony_date")
    private LocalDate ceremonyDate;

    @Column("notes")
    private String notes;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;
}