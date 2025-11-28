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
public class AwardNominationPersonId implements java.io.Serializable {

    @NotNull
    @Column(name = "nomination_id", nullable = false)
    private Long nominationId;

    @NotNull
    @Column(name = "person_id", nullable = false)
    private Long personId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        AwardNominationPersonId entity = (AwardNominationPersonId) o;
        return Objects.equals(this.personId, entity.personId) &&
                Objects.equals(this.nominationId, entity.nominationId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(personId, nominationId);
    }

}