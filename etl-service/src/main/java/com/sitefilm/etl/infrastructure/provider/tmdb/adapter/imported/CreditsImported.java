package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

import java.util.List;

public record CreditsImported(
        List<Cast> cast,
        List<Crew> crew
) {
}
