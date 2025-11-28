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
public class PersonCareerId implements java.io.Serializable {

    @NotNull
    @Column(name = "person_id", nullable = false)
    private Long personId;

    @NotNull
    @Column(name = "career_id", nullable = false)
    private Long careerId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        PersonCareerId entity = (PersonCareerId) o;
        return Objects.equals(this.careerId, entity.careerId) &&
                Objects.equals(this.personId, entity.personId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(careerId, personId);
    }

}