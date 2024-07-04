package org.sitefilm.contentservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.moviedto.MovieDto;
import org.sitefilm.contentservice.dto.moviedto.NewMovieDto;
import org.sitefilm.contentservice.dto.moviedto.UpdateMovieDto;
import org.sitefilm.contentservice.service.MovieContentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("content-api/movies")
public class ContentServiceMovieController {
    private final MovieContentService service;

    @GetMapping()
    public ResponseEntity<List<MovieDto>> getAllMovies() {
        List<MovieDto> movies = service.getAllMovies();
        return ResponseEntity.ok(movies);
    }

    @GetMapping("/{id}")
    public ResponseEntity<MovieDto> getMovieById(@PathVariable Long id) {
        MovieDto movieDto = service.getMovieById(id);
        if (movieDto != null) {
            return ResponseEntity.ok(movieDto);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/create")
    public ResponseEntity<MovieDto> createMovie(@RequestBody NewMovieDto newMovieDto, UriComponentsBuilder uriComponentsBuilder) {
        MovieDto createdMovie = service.createMovie(newMovieDto);
        URI location = uriComponentsBuilder.path("/{id}")
                .buildAndExpand(createdMovie.id())
                .toUri();
        return ResponseEntity.created(location).body(createdMovie);
    }

    @PostMapping("/update")
    public ResponseEntity<UpdateMovieDto> updateMovie(@RequestBody UpdateMovieDto updateMovieDto) {
        return ResponseEntity.ok(service.updateMovie(updateMovieDto));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteMovie(@PathVariable Long id) {
        try {
            service.deleteMovie(id);
            return ResponseEntity.ok("User delete successfully");
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build();
        }
    }
}