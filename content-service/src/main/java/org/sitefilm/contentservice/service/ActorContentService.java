package org.sitefilm.contentservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.actordto.ActorDto;
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

    public ActorDto createActor(ActorDto ActorDto) {
        if (ActorDto == null) {
            throw new RuntimeException();
        }
        return actorMapper.actorToActorDto(
                actorRepository.save(
                        actorMapper.actorDtoToActor(ActorDto)));
    }

    public ActorDto updateActor(ActorDto ActorDto) {
        if (ActorDto == null) {
            throw new RuntimeException();
        }
        actorRepository.findById(ActorDto.id())
                .ifPresentOrElse(actor -> {
                    actor.setAge(ActorDto.age());
                    actor.setFirstName(ActorDto.firstName());
                    actor.setLastName(ActorDto.lastName());
                }, () -> {
                    throw new RuntimeException();
                });
        return ActorDto;
    }

    public void deleteActor(Long id) {
        if (id == null) {
            throw new RuntimeException();
        }
        actorRepository.deleteById(id);
    }
}
