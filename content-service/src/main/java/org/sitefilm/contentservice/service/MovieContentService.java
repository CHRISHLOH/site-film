package org.sitefilm.contentservice.service;

import org.sitefilm.contentservice.dto.NamePeopleDto;
import org.sitefilm.contentservice.dto.main.movie.FullMovieDto;
import org.sitefilm.contentservice.dto.main.movie.MinimalMovieForListDto;
import org.sitefilm.contentservice.dto.main.person.MinimalPersonDto;
import org.sitefilm.contentservice.entity.projection.MinimalMovieProjection;
import org.sitefilm.contentservice.entity.projection.PersonProjection;
import org.sitefilm.contentservice.mapper.MovieMapper;
import org.sitefilm.contentservice.repository.MovieRepository;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Supplier;
import java.util.stream.Collectors;

@Service
public class MovieContentService {

    private final MovieMapper movieMapper;
    private final PersonContentService personContentService;
    private final MovieRepository movieRepository;

    public MovieContentService(MovieMapper movieMapper, @Lazy PersonContentService personContentService, MovieRepository movieRepository) {
        this.movieMapper = movieMapper;
        this.personContentService = personContentService;
        this.movieRepository = movieRepository;
    }

//    @Transactional(readOnly = true)
//    public FullMovieDto getMovieById(Long id) throws RuntimeException {
//        FullMovieDto fullMovieDto = movieMapper.movieToFullMovieDto(
//                movieRepository.findMovieWithDetailsById(id)
//                        .orElseThrow(() -> new RuntimeException("Movie not found")));
//        Set<MinimalPersonDto> minimalPersonDtoSet = personContentService.getAllMinimalPersons(id);
//        fullMovieDto.setPeople(minimalPersonDtoSet);
//        return fullMovieDto;
//    }

//    @Transactional(readOnly = true)
//    public List<MinimalMovieForListDto> getListOfMinimalMovie(Pageable pageable) {
//        return fetchMinimalMovies(
//                () -> movieRepository.findListMinimalMovies(pageable).getContent()
//        );
//    }
//
//    @Transactional(readOnly = true)
//    public List<MinimalMovieForListDto> getListOfMinimalMovieForPerson(Long personId) {
//        return fetchMinimalMovies(
//                () -> movieRepository.findMoviesByPersonId(personId)
//        );
//    }

//    private List<MinimalMovieForListDto> fetchMinimalMovies(Supplier<List<MinimalMovieProjection>> movieFetcher) {
//        // Получаем минимальные данные о фильмах
//        List<MinimalMovieForListDto> minimalMovieForListDtoList = movieFetcher.get().stream()
//                .map(minimalMovieProjection -> MinimalMovieForListDto.builder()
//                        .id(minimalMovieProjection.getId())
//                        .title(minimalMovieProjection.getTitle())
//                        .originalTitle(minimalMovieProjection.getOriginalTitle())
//                        .description(minimalMovieProjection.getDescription())
//                        .releaseDate(minimalMovieProjection.getReleaseDate())
//                        .build())
//                .toList();
//
//        // Получаем ID фильмов
//        List<Long> movieIds = minimalMovieForListDtoList.stream()
//                .map(MinimalMovieForListDto::getId)
//                .toList();
//
////        // Достаем всех персон для этих фильмов
////        List<PersonProjection> people = personContentService.findPeopleByMovies(movieIds);
//
//        // Группируем персон по фильмам и ролям
//        Map<Long, List<NamePeopleDto>> actorsMap = groupPeopleByRole(people, 2);
//        Map<Long, List<NamePeopleDto>> directorsMap = groupPeopleByRole(people, 3);
//
//        // Добавляем актеров и режиссеров в фильмы
//        minimalMovieForListDtoList.forEach(movie -> {
//            movie.setMinimalActorsPersons(actorsMap.getOrDefault(movie.getId(), new ArrayList<>()));
//            movie.setMinimalDirectorsPersons(directorsMap.getOrDefault(movie.getId(), new ArrayList<>()));
//        });
//
//        return minimalMovieForListDtoList;
//    }
//
//    Map<Long, List<NamePeopleDto>> groupPeopleByRole(List<PersonProjection> people, int careerId) {
//        return people.stream()
//                .filter(person -> person.getCareerId() == careerId)
//                .collect(Collectors.groupingBy(
//                        PersonProjection::getMovieId,
//                        Collectors.mapping(person -> NamePeopleDto.builder()
//                                .id(person.getId())
//                                .name(person.getName())
//                                .lastName(person.getLastName())
//                                .build(), Collectors.toList())
//                ));
//    }
}
