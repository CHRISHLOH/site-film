package org.sitefilm.contentservice.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.sitefilm.contentservice.dto.main.movie.FullMovieDto;
import org.sitefilm.contentservice.dto.main.movie.MinimalMovieForListDto;
import org.sitefilm.contentservice.service.MovieContentService;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.List;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("content-api/movies")
public class ContentServiceMovieController {
    private final MovieContentService service;

    @GetMapping("/{id}")
    public ResponseEntity<FullMovieDto> getMovieById(@PathVariable Long id, @AuthenticationPrincipal Jwt jwt) {
        // Извлечение информации из токена
        String username = jwt.getClaimAsString("preferred_username");
        // Можно также получить другие claims, например sub (идентификатор пользователя)
        String userId = jwt.getClaimAsString("sub");

        // Если нужно получить authorities, можно воспользоваться SecurityContextHolder
        Collection<? extends GrantedAuthority> authorities =
                SecurityContextHolder.getContext().getAuthentication().getAuthorities();
        authorities.forEach(System.out::println);
        System.out.println(username);
        System.out.println(userId);
        System.out.println(authorities);
        FullMovieDto fullMovieDto = service.getMovieById(id);
        if (fullMovieDto != null) {
            return ResponseEntity.ok(fullMovieDto);
        } else {
            return ResponseEntity.notFound().build();
        }
    }


    @GetMapping
    public ResponseEntity<List<MinimalMovieForListDto>> getMinimalMovies(
            @RequestParam(value = "page", defaultValue = "0") int page,
            @RequestParam(value = "size", defaultValue = "10") int size) {
        Pageable pageable = PageRequest.of(page, size);
        return ResponseEntity.ok(service.getListOfMinimalMovie(pageable));
    }
}