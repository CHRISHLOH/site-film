package org.sitefilm.adminservice.controller;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentMatchers;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.sitefilm.adminservice.dto.moviedto.MovieDto;
import org.sitefilm.adminservice.service.AdminMovieRestClient;

import java.util.Collection;
import java.util.List;
import java.util.stream.Stream;

@ExtendWith(MockitoExtension.class)
class AdminServiceMovieControllerTest {

    @Mock
    AdminMovieRestClient adminMovieRestClient;

    @InjectMocks
    AdminServiceMovieController adminServiceMovieController;

    @Test
    void getAllMovies() {

    }

    @Test
    void getMovieById() {
    }

    @Test
    void createMovie() {
    }

    @Test
    void updateMovie() {
    }

    @Test
    void deleteMovie() {
    }
}