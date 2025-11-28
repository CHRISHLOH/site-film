package com.sitefilm.etl.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.Hibernate;

import java.util.Objects;

@Getter
@Setter
@Embeddable
public class AwardNominationTranslationId implements java.io.Serializable {

    @NotNull
    @Column(name = "nomination_id", nullable = false)
    private Long nominationId;

    @Size(max = 5)
    @NotNull
    @Column(name = "locale", nullable = false, length = 5)
    private String locale;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        AwardNominationTranslationId entity = (AwardNominationTranslationId) o;
        return Objects.equals(this.locale, entity.locale) &&
                Objects.equals(this.nominationId, entity.nominationId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(locale, nominationId);
    }

}