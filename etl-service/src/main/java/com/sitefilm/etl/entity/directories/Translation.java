package com.sitefilm.etl.entity.directories;

import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.relational.core.mapping.Column;

import java.util.HashMap;
import java.util.Map;

@ToString
@Getter
@Setter
public class Translation {
    @NotNull
    @Column("translations")
    private Map<String, String> translations = new HashMap<>();
}
