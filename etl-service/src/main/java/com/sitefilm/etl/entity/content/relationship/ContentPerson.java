package com.sitefilm.etl.entity.content.relationship;

import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.directories.Career;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
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
        name = "content_persons",
        schema = "content_service"
)
public class ContentPerson{
    @NotNull
    @Column("content_id")
    private Content content;

    @NotNull
    @Column("person_id")
    private Long personId;

    @NotNull
    @Column("career_id")
    private Long careerId;

    @Size(max = 255)
    @Column("character_name")
    private String characterName;

    @Column("display_order_in_content")
    private Integer displayOrderInContent;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}