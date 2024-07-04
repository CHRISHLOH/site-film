package org.sitefilm.contentservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.moviedto.MovieDto;
import org.sitefilm.contentservice.dto.moviedto.NewMovieDto;
import org.sitefilm.contentservice.dto.moviedto.UpdateMovieDto;
import org.sitefilm.contentservice.entity.Movie;
import org.sitefilm.contentservice.mapper.MovieMapper;
import org.sitefilm.contentservice.repository.MovieRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Transactional
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

    public MovieDto createMovie(NewMovieDto newMovieDto) {
        if (newMovieDto == null) {
            throw new RuntimeException();
        }
        return movieMapper.movieToMovieDto(repository.save(movieMapper.newMovieToMovieEntity(newMovieDto)));
    }

    public UpdateMovieDto updateMovie(UpdateMovieDto updateMovieDto) {
        repository.findById(updateMovieDto.id())
                .ifPresentOrElse(movie -> {
                    movie.setTitle(updateMovieDto.title());
                    movie.setDescription(updateMovieDto.description());
                    movie.setActors(updateMovieDto.actors());
                    movie.setGenres(updateMovieDto.genres());
                    movie.setCreatedAt(updateMovieDto.createdAt());
                    movie.setUpdatedAt(updateMovieDto.updatedAt());
                }, () -> {
                    throw new RuntimeException();
                });
        return updateMovieDto;
    }
}
