package org.sitefilm.userservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.dto.FullMovieDto;
import org.sitefilm.userservice.service.UserRestClient;
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
}
