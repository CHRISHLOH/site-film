package org.sitefilm.contentservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.actordto.ActorDto;
import org.sitefilm.contentservice.dto.actordto.NewActorDto;
import org.sitefilm.contentservice.dto.actordto.UpdatedActorDto;
import org.sitefilm.contentservice.entity.Actor;
import org.sitefilm.contentservice.mapper.ActorMapper;
import org.sitefilm.contentservice.repository.ActorRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Transactional
@RequiredArgsConstructor
public class ActorContentService {

    private final ActorRepository actorRepository;

    private final ActorMapper actorMapper;

    public List<ActorDto> getAllActors() {
        return actorRepository.findAll().stream().map(actorMapper::actorToActorDto).collect(Collectors.toList());
    }

    public ActorDto getActorById(Long id) {
        if (id == null) {
            throw new RuntimeException();
        }
        Optional<Actor> actor = actorRepository.findById(id);
        if (actor.isEmpty()) {
            throw new RuntimeException();
        }
        return actorMapper.actorToActorDto(actor.get());
    }

    public ActorDto createActor(NewActorDto newActorDto) {
        if (newActorDto == null) {
            throw new RuntimeException();
        }
        return actorMapper.actorToActorDto(
                actorRepository.save(
                        actorMapper.newActorToActorEntity(newActorDto)));
    }

    public UpdatedActorDto updateActor(UpdatedActorDto updatedActorDto) {
        if (updatedActorDto == null) {
            throw new RuntimeException();
        }
        actorRepository.findById(updatedActorDto.id())
                .ifPresentOrElse(actor -> {
                    actor.setAge(updatedActorDto.age());
                    actor.setFirstName(updatedActorDto.firstName());
                    actor.setLastName(updatedActorDto.lastName());
                }, () -> {
                    throw new RuntimeException();
                });
        return updatedActorDto;
    }

    public void deleteActor(Long id) {
        if (id == null) {
            throw new RuntimeException();
        }
        actorRepository.deleteById(id);
    }
}
