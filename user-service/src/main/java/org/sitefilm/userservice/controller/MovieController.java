package org.sitefilm.userservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.dto.FullMovieDto;
import org.sitefilm.userservice.service.UserRestClient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequiredArgsConstructor
public class MovieController {

    private final UserRestClient restClient;

    @GetMapping("/movie/{id}")
    public String getMoviePage(@PathVariable Long id, Model model) {
        FullMovieDto movie = restClient.getMovieById(id);
        model.addAttribute("movie", movie);
        return "mainMoviePage1";
    }
}
