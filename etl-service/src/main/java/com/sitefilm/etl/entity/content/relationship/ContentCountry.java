package com.sitefilm.etl.entity.content.relationship;

import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.directories.Country;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "content_countries",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_content_countries_country", columnList = "country_id")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_content_countries",
                        columnNames = {"content_id", "country_id"}
                )
        }
)
public class ContentCountry {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "country_id", nullable = false)
    private Country country;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ContentCountry that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}