package com.sitefilm.etl.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.Hibernate;

import java.util.Objects;

@Getter
@Setter
@Embeddable
public class CollectionItemId implements java.io.Serializable {

    @NotNull
    @Column(name = "collection_id", nullable = false)
    private Long collectionId;

    @NotNull
    @Column(name = "content_id", nullable = false)
    private Long contentId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        CollectionItemId entity = (CollectionItemId) o;
        return Objects.equals(this.contentId, entity.contentId) &&
                Objects.equals(this.collectionId, entity.collectionId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(contentId, collectionId);
    }

}