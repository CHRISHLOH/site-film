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

@Data
@ToString
public class Career{
    private Short id;
    private CareerType type;
    Map<String, String> translations;
}