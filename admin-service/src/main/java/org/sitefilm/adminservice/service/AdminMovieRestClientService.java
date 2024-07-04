//package org.sitefilm.adminservice.service;
//
//import lombok.RequiredArgsConstructor;
//import org.sitefilm.adminservice.dto.moviedto.MovieDto;
//import org.springframework.stereotype.Service;
//import org.springframework.web.client.RestClient;
//
//import java.util.List;
//
//@Service
//@RequiredArgsConstructor
//public class AdminMovieRestClientService {
//
//    private final RestClient restClient;
//
//    public List<MovieDto> getAllMovies() {
//        return restClient.get()
//                .uri("/content-api/movies")
//    }
//}
