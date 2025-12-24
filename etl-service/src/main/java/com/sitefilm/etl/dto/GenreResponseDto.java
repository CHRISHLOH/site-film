package com.sitefilm.etl.dto;

import lombok.Data;

import java.util.List;

@Data
public class GenreResponseDto {
    List<GenreDto> genres;
}
