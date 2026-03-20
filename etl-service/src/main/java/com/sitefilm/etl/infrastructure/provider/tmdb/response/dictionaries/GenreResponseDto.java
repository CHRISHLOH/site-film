package com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries;

import com.sitefilm.etl.infrastructure.provider.tmdb.response.GenreDto;
import lombok.Data;

import java.util.List;

@Data
public class GenreResponseDto {
    List<GenreDto> genres;
}
