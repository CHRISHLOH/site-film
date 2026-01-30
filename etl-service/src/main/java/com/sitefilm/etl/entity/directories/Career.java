package com.sitefilm.etl.entity.directories;

import com.sitefilm.etl.entity.CareerType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(
        name = "careers",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_careers_career", columnList = "career")
        }
)
public class Career extends DictionariesEntity {
    @NotNull
    @Column(name = "type")
    private CareerType type;
}