package org.sitefilm.contentservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.main.MovieDto;
import org.sitefilm.contentservice.entity.main.Movie;
import org.sitefilm.contentservice.mapper.MovieMapper;
import org.sitefilm.contentservice.repository.MovieRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MovieContentService {
    private final MovieRepository repository;
    private final MovieMapper movieMapper;

    public List<MovieDto> getAllMovies() {
        return repository.findAll().stream().map(movieMapper::movieToMovieDto).collect(Collectors.toList());
    }

    public MovieDto getMovieById(Long id) throws RuntimeException {
        Optional<Movie> movie = repository.findById(id);
        if (movie.isEmpty()) {
            throw new RuntimeException("null id");
        }
        return movieMapper.movieToMovieDto(movie.get());
    }

    public void deleteMovie(Long id) {
        if (id == null) {
            throw new RuntimeException("null id");
        }
        repository.deleteById(id);
    }

    @Transactional()
    public MovieDto createMovie(MovieDto movieDto) {
        if (movieDto == null) {
            throw new RuntimeException();
        }
        return movieMapper.movieToMovieDto(repository.save(movieMapper.movieDtoToMovie(movieDto)));
    }

//    public MovieDto updateMovie(MovieDto updateMovieDto) {
//        repository.findById(updateMovieDto.id())
//                .ifPresentOrElse(movie -> {
//                    movie.setTitle(updateMovieDto.title());
//                    movie.setDescription(updateMovieDto.description());
//                    movie.setActors(updateMovieDto.actors());
//                    movie.setGenres(updateMovieDto.genres());
//                    movie.setCreatedAt(updateMovieDto.createdAt());
//                    movie.setUpdatedAt(updateMovieDto.updatedAt());
//                }, () -> {
//                    throw new RuntimeException();
//                });
//        return updateMovieDto;
//    }

    public List<MovieDto> topRecommendedMovies() {
        return repository.getTopRecommendedMovies()
                .stream()
                .map(movieMapper::movieToMovieDto)
                .collect(Collectors.toList());
    }

    public MovieDto getMovieByTitle(String title) {
        return movieMapper.movieToMovieDto(repository.findMovieByTitle(title));
    }

    public List<MovieDto> getMoviesByIds(List<Long> ids) {
        return repository.findAllById(ids)
                .stream()
                .map(movieMapper::movieToMovieDto)
                .toList();
    }
}
