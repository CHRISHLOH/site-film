package com.sitefilm.etl.dto;

import com.sitefilm.etl.dto.core.RelationshipsData;
import com.sitefilm.etl.entity.content.relationship.ContentTranslation;

import java.util.List;

public record MovieRelationshipDto(
        List<ContentTranslation> translations,
        RelationshipsData relations

) {
}
