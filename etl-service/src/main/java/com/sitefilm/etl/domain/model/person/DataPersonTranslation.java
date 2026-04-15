package com.sitefilm.etl.domain.model.person;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DataPersonTranslation{
    private String locale;
    private String localeName;
    private String biography;
}
