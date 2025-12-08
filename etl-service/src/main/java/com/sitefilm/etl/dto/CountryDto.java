package com.sitefilm.etl.dto;

import lombok.Data;

@Data
public class CountryDto {
     private Long id;
     private String iso_639_1;
     private String english_name;
     private String name;
}
