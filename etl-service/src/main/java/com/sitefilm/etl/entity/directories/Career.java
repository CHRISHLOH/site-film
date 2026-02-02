package com.sitefilm.etl.entity.directories;

import com.sitefilm.etl.entity.enums.CareerType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
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

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "careers_seq")
    @SequenceGenerator(
            name = "careers_seq",
            sequenceName = "content_service.careers_id_seq",
            allocationSize = 50
    )
    private Long id;

    @NotNull
    @Size(max = 255)
    @Column(name = "career", nullable = false, unique = true)
    private String career;

    @NotNull
    @Size(max = 100)
    @Column(name = "type")
    @Enumerated(EnumType.STRING)
    private CareerType type;


}