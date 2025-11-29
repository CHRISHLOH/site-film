package com.sitefilm.etl.entity.franchise;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.OffsetDateTime;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "franchises",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_franchises_code", columnList = "code"),
                @Index(name = "idx_franchises_parent", columnList = "parent_franchise_id"),
                @Index(name = "idx_franchises_sort_order", columnList = "parent_franchise_id, sort_order")
        }
)
public class Franchise{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(max = 100)
    @Column(name = "code", nullable = false, unique = true, length = 100)
    private String code;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_franchise_id")
    private Franchise parentFranchise;

    @Column(name = "sort_order")
    private Integer sortOrder;

    @Column(name = "poster_url", columnDefinition = "TEXT")
    private String posterUrl;

    @NotNull
    @Column(name = "depth", nullable = false)
    private Integer depth = 0;


    @OneToMany(mappedBy = "parentFranchise")
    @OrderBy("sortOrder ASC")
    private Set<Franchise> childFranchises = new HashSet<>();

    @OneToMany(mappedBy = "franchise", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<FranchiseTranslation> translations = new HashSet<>();

    @OneToMany(mappedBy = "franchise", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<FranchiseWatchOrder> watchOrders = new HashSet<>();

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Franchise franchise)) return false;
        return id != null && id.equals(franchise.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}