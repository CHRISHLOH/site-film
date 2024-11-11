package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.main.ActorDto;
import org.sitefilm.contentservice.entity.main.Actor;


@Mapper(componentModel = "spring")
public interface ActorMapper {
    ActorMapper INSTANCE = Mappers.getMapper(ActorMapper.class);

    Actor actorDtoToActor(ActorDto actorDto);

    ActorDto actorToActorDto(Actor actor);
}
