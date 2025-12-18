package com.sitefilm.etl.entity.directories;

import io.hypersistence.utils.hibernate.type.json.JsonType;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.hibernate.annotations.Type;

import java.util.HashMap;
import java.util.Map;

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
public class Career extends DictionariesEntity{

    @NotNull
    @Size(max = 255)
    @Column(name = "career", nullable = false, unique = true)
    private String career;
}