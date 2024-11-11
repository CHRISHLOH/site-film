package org.sitefilm.contentservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.main.ActorDto;
import org.sitefilm.contentservice.entity.main.Actor;
import org.sitefilm.contentservice.mapper.ActorMapper;
import org.sitefilm.contentservice.mapper.CareerMapper;
import org.sitefilm.contentservice.mapper.CountryMapper;
import org.sitefilm.contentservice.mapper.GenreMapper;
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

    private final GenreMapper genreMapper;

    private final CareerMapper careerMapper;

    private final CountryMapper countryMapper;

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

    public ActorDto createActor(ActorDto actorDto) {
        if (actorDto == null) {
            throw new RuntimeException();
        }
        return actorMapper.actorToActorDto(
                actorRepository.save(
                        actorMapper.actorDtoToActor(actorDto)));
    }

    public ActorDto updateActor(ActorDto actorDto) {
        if (actorDto == null) {
            throw new RuntimeException();
        }
        actorRepository.findById(actorDto.id())
                .ifPresentOrElse(actor -> {
                    actor.setFirstName(actorDto.firstName());
                    actor.setLastName(actorDto.lastName());
                    actor.setBirth_date(actorDto.birth_date());
                    actor.setGender(actorDto.gender());
                    actor.setCountry(countryMapper.countryDtoToCountry(actorDto.country()));
                    actor.setCareers(actorDto.careers().stream().map(careerMapper::careerDtoToCareer).collect(Collectors.toSet()));
                    actor.setGenres(actorDto.genres().stream().map(genreMapper::genreDtoToGenre).collect(Collectors.toSet()));
                }, () -> {
                    throw new RuntimeException();
                });
        return actorDto;
    }

    public void deleteActor(Long id) {
        if (id == null) {
            throw new RuntimeException();
        }
        actorRepository.deleteById(id);
    }
}
