package org.sitefilm.userservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.dto.main.movie.FullMovieDto;
import org.sitefilm.userservice.dto.main.movie.MinimalMovieForListDto;
import org.sitefilm.userservice.dto.main.person.FullPersonDto;
import org.sitefilm.userservice.service.UserRestClient;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserRestController {

    private final UserRestClient userRestClient;

    @GetMapping("/movie/{id}")
    public ResponseEntity<FullMovieDto> getMovieById(@PathVariable Long id) {
        FullMovieDto fullMovieDto = userRestClient.getMovieById(id);
        if (fullMovieDto != null) {
            return ResponseEntity.ok(fullMovieDto);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping("/movies")
    public ResponseEntity<List<MinimalMovieForListDto>> getMinimalMovies(
            @RequestParam(value = "page", defaultValue = "0") int page,
            @RequestParam(value = "size", defaultValue = "10") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(userRestClient.getListOfMovieInTheMainPage(pageable));
    }

    @GetMapping("/person/{id}")
    public FullPersonDto findPersonById(@PathVariable Long id) {
        return userRestClient.getFullPersonById(id);
    }
}
