package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.ContentAggregateDto;
import com.sitefilm.etl.entity.content.relationship.ContentCountry;
import com.sitefilm.etl.entity.content.relationship.ContentGenre;
import com.sitefilm.etl.entity.content.relationship.ContentLanguage;
import com.sitefilm.etl.entity.content.relationship.ContentPerson;
import org.springframework.stereotype.Component;

@Component
public class RelationshipsAggregateFactory {


    public void aggregate(ContentAggregateDto content, ) {
        ContentCountry contentCountry = new ContentCountry();
        ContentGenre contentGenre = new ContentGenre();
        ContentLanguage contentLanguage = new ContentLanguage();
        ContentPerson contentPerson = new ContentPerson();


    }
}
