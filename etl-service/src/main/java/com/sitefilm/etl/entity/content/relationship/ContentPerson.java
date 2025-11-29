package com.sitefilm.etl.entity.content.relationship;

import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.directories.Career;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "content_persons",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_content_persons_person", columnList = "person_id"),
                @Index(name = "idx_content_persons_career", columnList = "career_id"),
                @Index(name = "idx_content_persons_content_order", columnList = "content_id, display_order_in_content"),
                @Index(name = "idx_content_persons_person_order", columnList = "person_id, display_order_in_career")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_content_person",
                        columnNames = {"content_id", "person_id", "career_id"}
                )
        }
)
public class ContentPerson{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "career_id", nullable = false)
    private Career career;

    @Size(max = 255)
    @Column(name = "character_name")
    private String characterName;

    @Column(name = "display_order_in_content")
    @Builder.Default
    private Integer displayOrderInContent = 0;

    @Column(name = "display_order_in_career")
    @Builder.Default
    private Integer displayOrderInCareer = 0;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ContentPerson that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}