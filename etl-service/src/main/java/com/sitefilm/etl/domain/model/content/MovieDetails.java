package com.sitefilm.etl.domain.model.content;

import java.time.LocalDate;

public record MovieDetails(Long contentId, Long budget, Long boxOffice, Short duration,
                           LocalDate releaseDate) implements Details {
}
