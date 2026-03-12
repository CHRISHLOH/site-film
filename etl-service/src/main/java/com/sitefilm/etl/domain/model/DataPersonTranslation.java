package com.sitefilm.etl.domain.model;

import lombok.Data;

@Data
public class DataPersonTranslation{
    private Long personId;
    private String locale;
    private String localeName;
    private String biography;
}
