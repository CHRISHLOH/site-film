package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

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
public class Franchise extends AuditableEntity {

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
    @Builder.Default
    private Integer depth = 0;

    // Relationships

    @OneToMany(mappedBy = "parentFranchise")
    @OrderBy("sortOrder ASC")
    @Builder.Default
    private Set<Franchise> childFranchises = new HashSet<>();

    @OneToMany(mappedBy = "franchise", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<FranchiseTranslation> translations = new HashSet<>();

    @OneToMany(mappedBy = "franchise", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<FranchiseWatchOrder> watchOrders = new HashSet<>();

    // Helper methods

    public void addChildFranchise(Franchise child) {
        childFranchises.add(child);
        child.setParentFranchise(this);
    }

    public void removeChildFranchise(Franchise child) {
        childFranchises.remove(child);
        child.setParentFranchise(null);
    }

    public void addTranslation(FranchiseTranslation translation) {
        translations.add(translation);
        translation.setFranchise(this);
    }

    public void removeTranslation(FranchiseTranslation translation) {
        translations.remove(translation);
        translation.setFranchise(null);
    }

    public void addWatchOrder(FranchiseWatchOrder watchOrder) {
        watchOrders.add(watchOrder);
        watchOrder.setFranchise(this);
    }

    public void removeWatchOrder(FranchiseWatchOrder watchOrder) {
        watchOrders.remove(watchOrder);
        watchOrder.setFranchise(null);
    }

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