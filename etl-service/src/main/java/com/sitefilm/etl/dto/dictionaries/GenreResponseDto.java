package com.sitefilm.etl.dto.dictionaries;

import lombok.Data;

import java.util.List;

@Data
public class GenreResponseDto {
    List<GenreDto> genres;
}
