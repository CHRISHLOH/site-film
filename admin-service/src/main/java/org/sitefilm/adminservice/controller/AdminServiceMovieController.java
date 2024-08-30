package org.sitefilm.adminservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.adminservice.dto.actordto.ActorDto;
import org.sitefilm.adminservice.dto.moviedto.MovieDto;
import org.sitefilm.adminservice.service.AdminMovieRestClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/admin/movies")
public class AdminServiceMovieController {

    private final AdminMovieRestClient restClient;

    @GetMapping
    public List<MovieDto> getAllMovies() {
        return restClient.getAllMovies();
    }

    @GetMapping("/{id}")
    public MovieDto getMovieById(@PathVariable int id) {
        return restClient.getMovieById(id);
    }

    @PostMapping("/create")
    public MovieDto createMovie(@RequestBody MovieDto movieDto) {
        return restClient.createMovie(movieDto);
    }

    @PostMapping("/update")
    public MovieDto updateMovie(@RequestBody MovieDto movieDto) {
        return restClient.updateMovie(movieDto);
    }

    @DeleteMapping("/{id}")
    public void deleteMovie(@PathVariable int id) {
        restClient.deleteMovie(id);
    }
}
