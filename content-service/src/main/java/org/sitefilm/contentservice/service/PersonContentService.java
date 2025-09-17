package org.sitefilm.contentservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.main.movie.MinimalMovieForListDto;
import org.sitefilm.contentservice.dto.main.person.FullPersonDto;
import org.sitefilm.contentservice.dto.main.person.MinimalPersonDto;
import org.sitefilm.contentservice.entity.main.person.Person;
import org.sitefilm.contentservice.entity.projection.PersonProjection;
import org.sitefilm.contentservice.mapper.CareerMapper;
import org.sitefilm.contentservice.mapper.CountryMapper;
import org.sitefilm.contentservice.mapper.GenreMapper;
import org.sitefilm.contentservice.repository.PersonRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@Transactional
@RequiredArgsConstructor
public class PersonContentService {

    private final MovieContentService movieContentService;
    private final PersonRepository personRepository;
    private final CareerMapper careerMapper;
    private final CountryMapper countryMapper;
    private final GenreMapper genreMapper;

    @Transactional(readOnly = true)
    public Set<MinimalPersonDto> getAllMinimalPersons(Long movieId) {
        return personRepository.findMinimalPeopleInfoMovieById(movieId).stream().map(
                projection -> new MinimalPersonDto(
                        projection.getId(),
                        projection.getName(),
                        projection.getLastName(),
                        careerMapper.careerListToCareerDtoSet(projection.getCareers())
                )
        ).collect(Collectors.toSet());
    }

    public List<PersonProjection> findPeopleByMovies(List<Long> moviesIds) {
        return personRepository.findPeopleByMovies(moviesIds);
    }

    public FullPersonDto findPersonById(Long personId) {
        List<MinimalMovieForListDto> minimalMovieDto = movieContentService.getListOfMinimalMovieForPerson(personId);
        Person person = personRepository.findPersonById(personId);
        return FullPersonDto.builder()
                .id(person.getId())
                .firstName(person.getFirstName())
                .lastName(person.getLastName())
                .birth_date(person.getBirth_date())
                .gender(person.getGender())
                .country(countryMapper.countryToCountryDto(person.getCountry()))
                .city(null)
                .genres(person.getGenres().stream().map(genreMapper::genreToGenreDto).collect(Collectors.toSet()))
                .movies(minimalMovieDto)
                .careers(person.getCareers().stream().map(careerMapper::careerToCareerDto).collect(Collectors.toSet()))
                .build();
    }

}
