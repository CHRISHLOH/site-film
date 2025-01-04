package org.sitefilm.contentservice.entity.projection;

import java.time.LocalDate;

public interface MinimalMovieProjection {
    Long getId();
    String getTitle();
    String getDescription();
    String getOriginalTitle();
    LocalDate getReleaseDate();
}
