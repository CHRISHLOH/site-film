package org.sitefilm.userservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.dto.MovieDto;
import org.sitefilm.userservice.service.UserRestClient;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserRestController {

    private final UserRestClient userRestClient;

    @GetMapping("/movies")
    public List<MovieDto> getMovies() {
        return userRestClient.getAllMovies();
    }
}
