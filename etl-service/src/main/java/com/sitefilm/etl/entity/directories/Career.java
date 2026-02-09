package com.sitefilm.etl.entity.directories;

import com.sitefilm.etl.entity.enums.CareerType;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Embedded;
import org.springframework.data.relational.core.mapping.Table;

import java.util.Map;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(
        name = "careers",
        schema = "content_service"
)
public class Career{
    @Id
    private Long id;

    @NotNull
    @Size(max = 100)
    @Column("type")
    private CareerType type;

    @Column("translations")
    Map<String, String> translations;
}