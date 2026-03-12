package com.sitefilm.etl.domain.model.ref;

import lombok.Data;

@Data
public class ContentGenre{
    private Long contentId;
    private Short genreId;
    private Short displayOrder;
}
