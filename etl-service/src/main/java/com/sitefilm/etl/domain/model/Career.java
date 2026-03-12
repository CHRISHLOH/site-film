package com.sitefilm.etl.domain.model;

import com.sitefilm.etl.domain.model.enums.CareerType;
import lombok.*;

import java.util.Map;

@Data
@ToString
@Builder
public class Career{
    private Short id;
    private CareerType type;
    private Map<String, String> translations;
}