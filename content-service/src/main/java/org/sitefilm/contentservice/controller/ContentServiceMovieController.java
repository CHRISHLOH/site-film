package org.sitefilm.contentservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.moviedto.MovieDto;
import org.sitefilm.contentservice.service.MovieContentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;
import java.util.stream.Stream;

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
    public ResponseEntity<MovieDto> createMovie(@RequestBody MovieDto newMovieDto, UriComponentsBuilder uriComponentsBuilder) {
        MovieDto createdMovie = service.createMovie(newMovieDto);
        URI location = uriComponentsBuilder.path("/{id}")
                .buildAndExpand(createdMovie.id())
                .toUri();
        return ResponseEntity.created(location).body(createdMovie);
    }

    @PostMapping("/update")
    public ResponseEntity<MovieDto> updateMovie(@RequestBody MovieDto updateMovieDto) {
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

    @GetMapping("/top")
    public ResponseEntity<List<MovieDto>> getTopRecommendedMovies(){
        return ResponseEntity.ok(service.topRecommendedMovies());
    }

    @GetMapping("find/{title}")
    public ResponseEntity<MovieDto> getMovieByTitle(@PathVariable String title) {
        return ResponseEntity.ok(service.getMovieByTitle(title));
    }

    @GetMapping("find-list")
    public ResponseEntity<List<MovieDto>> getMoviesByIds(@RequestParam List<Long> ids) {
        return ResponseEntity.ok(service.getMoviesByIds(ids));
    }
}