package com.sitefilm.etl.entity.directories;

import lombok.*;
import org.springframework.data.relational.core.mapping.Table;

import java.util.Map;

@Data
@ToString
public class Genre{
    private Short id;
    private Long externalId;
    Map<String, String> translations;
}