package org.sitefilm.contentservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.genredto.GenreDto;
import org.sitefilm.contentservice.service.GenreContentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("content-api/genres")
public class ContentServiceGenreController {

    private final GenreContentService service;

    @GetMapping()
    public ResponseEntity<List<GenreDto>> getAllGenres() {
        List<GenreDto> actors = service.getAllGenres();
        return ResponseEntity.ok(actors);
    }

    @GetMapping("/{id}")
    public ResponseEntity<GenreDto> getGenreById(@PathVariable Long id) {
        GenreDto genreDto = service.getGenreById(id);
        if (genreDto != null) {
            return ResponseEntity.ok(genreDto);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/create")
    public ResponseEntity<GenreDto> createGenre(@RequestBody GenreDto newGenreDto, UriComponentsBuilder uriComponentsBuilder) {
        GenreDto createdActor = service.createGenre(newGenreDto);
        URI location = uriComponentsBuilder.path("/{id}")
                .buildAndExpand(createdActor.id())
                .toUri();
        return ResponseEntity.created(location).body(createdActor);
    }

    @PostMapping("/update")
    public ResponseEntity<GenreDto> updateActor(@RequestBody GenreDto updatedGenreDto) {
        return ResponseEntity.ok(service.updateGenre(updatedGenreDto));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteActor(@PathVariable Long id) {
        try {
            service.deleteGenre(id);
            return ResponseEntity.ok("User delete successfully");
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build();
        }
    }
}
