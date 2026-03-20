package com.sitefilm.etl.domain.model.dictionaries;

import com.sitefilm.etl.domain.model.person.CareerType;
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