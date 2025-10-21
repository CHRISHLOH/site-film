package org.sitefilm.contentservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.NamePeopleDto;
import org.sitefilm.contentservice.dto.main.movie.FullMovieDto;
import org.sitefilm.contentservice.entity.projection.PersonProjection;
import org.sitefilm.contentservice.mapper.MovieMapper;
import org.sitefilm.contentservice.repository.MovieRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MovieForEmbendingService {

    private final PersonContentService personContentService;
    private final MovieRepository movieRepository;
    private final MovieMapper movieMapper;

//    public List<FullMovieDto> getMovies(){
//        List<FullMovieDto> movies = movieMapper.fullMovieDtoToMovieList(movieRepository.findMoviesInTwoRanges());
//
//        List<Long> moviesId = movies.stream().map(FullMovieDto::getId).toList();
//        List<PersonProjection> people = personContentService.findPeopleByMovies(moviesId);
//        Map<Long, List<NamePeopleDto>> actorsMap = groupPeopleByRole(people, 2);
//        Map<Long, List<NamePeopleDto>> directorsMap = groupPeopleByRole(people, 3);
//
//        movies.forEach(movie -> {
//            movie.setActors(actorsMap.getOrDefault(movie.getId(), new ArrayList<>()));
//            movie.setDirectors(directorsMap.getOrDefault(movie.getId(), new ArrayList<>()));
//        });
//
//        return movies;
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
