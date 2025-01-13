package org.sitefilm.userservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class MovieController {

    @GetMapping("/movie/{id}")
    public String getMoviePage(@PathVariable Long id) {
        return "mainMoviePage";
    }

    @GetMapping("/movies")
    public String getMovies() {
        return "ListMainPage";
    }

}
