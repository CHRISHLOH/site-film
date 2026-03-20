package com.sitefilm.etl.domain.model.dictionaries;

import com.sitefilm.etl.domain.model.person.CareerType;

public record CareerKey(
        CareerType type,
        String job
) {}
