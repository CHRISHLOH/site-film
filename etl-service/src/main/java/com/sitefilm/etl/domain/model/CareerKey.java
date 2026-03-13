package com.sitefilm.etl.domain.model;

import com.sitefilm.etl.domain.model.enums.CareerType;

public record CareerKey(
        CareerType type,
        String job
) {}
