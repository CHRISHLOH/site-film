package com.sitefilm.etl.domain.model.ref;

public record ContentPerson(
    Long contentId,
    Long personId,
    Short jobId,
    String characterName,
    Short displayOrder
) {
}
