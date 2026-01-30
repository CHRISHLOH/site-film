package com.sitefilm.etl.entity.franchise;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.OffsetDateTime;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@EntityListeners(AuditingEntityListener.class)
@Table(
        name = "franchise_watch_orders",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_franchise_watch_orders_franchise", columnList = "franchise_id")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_franchise_watch_order",
                        columnNames = {"franchise_id", "code"}
                )
        }
)
public class FranchiseWatchOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "franchise_id", nullable = false)
    private Franchise franchise;

    @NotNull
    @Size(max = 100)
    @Column(name = "code", nullable = false, length = 100)
    private String code;

    @Size(max = 255)
    @Column(name = "name")
    private String name;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;


    @OneToMany(mappedBy = "watchOrder", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("position ASC")
    private Set<FranchiseWatchOrderItem> items = new HashSet<>();


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof FranchiseWatchOrder that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}