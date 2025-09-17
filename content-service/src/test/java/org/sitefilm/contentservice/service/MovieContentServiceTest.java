package org.sitefilm.contentservice.service;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.sitefilm.contentservice.dto.main.movie.FullMovieDto;
import org.sitefilm.contentservice.dto.main.movie.MinimalMovieForListDto;
import org.sitefilm.contentservice.entity.main.movie.Movie;
import org.sitefilm.contentservice.entity.projection.MinimalMovieProjection;
import org.sitefilm.contentservice.entity.projection.PersonProjection;
import org.sitefilm.contentservice.mapper.MovieMapper;
import org.sitefilm.contentservice.repository.MovieRepository;
import org.springframework.data.domain.*;

import java.util.*;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class MovieContentServiceTest {

    @Mock
    private MovieMapper movieMapper;

    @Mock
    private PersonContentService personContentService;

    @Mock
    private MovieRepository movieRepository;

    @InjectMocks
    private MovieContentService movieContentService;

    private Movie testMovie;
    private FullMovieDto testMovieDto;
    private MinimalMovieForListDto minimalMovieDto;
    private PersonProjection personProjection;

    @BeforeEach
    void setUp() {
        testMovie = new Movie();
        testMovie.setId(1L);
        testMovie.setTitle("Test Movie");

        testMovieDto = FullMovieDto.builder()
                .id(1L)
                .title("Test Movie")
                .build();

        minimalMovieDto = MinimalMovieForListDto.builder()
                .id(1L)
                .title("Test Movie")
                .build();

        personProjection = mock(PersonProjection.class);
    }

    @Test
    void getMovieById_shouldReturnMovie() {
        when(movieRepository.findMovieWithDetailsById(1L)).thenReturn(Optional.of(testMovie));
        when(movieMapper.movieToFullMovieDto(testMovie)).thenReturn(testMovieDto);
        when(personContentService.getAllMinimalPersons(1L)).thenReturn(new HashSet<>());

        FullMovieDto result = movieContentService.getMovieById(1L);

        assertNotNull(result);
        assertEquals(1L, result.getId());
        assertEquals("Test Movie", result.getTitle());
    }

    @Test
    void getMovieById_shouldThrowExceptionWhenMovieNotFound() {
        when(movieRepository.findMovieWithDetailsById(1L)).thenReturn(Optional.empty());

        assertThrows(RuntimeException.class, () -> movieContentService.getMovieById(1L));
    }

    @Test
    void getListOfMinimalMovie_shouldReturnMovies() {
        Pageable pageable = PageRequest.of(0, 10);
        List<MinimalMovieProjection> movies = List.of(mock(MinimalMovieProjection.class));
        Page<MinimalMovieProjection> page = new PageImpl<>(movies);

        when(movieRepository.findListMinimalMovies(pageable)).thenReturn(page);
        when(personContentService.findPeopleByMovies(any())).thenReturn(Collections.emptyList());

        List<MinimalMovieForListDto> result = movieContentService.getListOfMinimalMovie(pageable);

        assertNotNull(result);
        assertFalse(result.isEmpty());
    }

    @Test
    void getListOfMinimalMovieForPerson_shouldReturnMovies() {
        List<MinimalMovieProjection> movies = List.of(mock(MinimalMovieProjection.class));
        when(movieRepository.findMoviesByPersonId(1L)).thenReturn(movies);
        when(personContentService.findPeopleByMovies(any())).thenReturn(Collections.emptyList());

        List<MinimalMovieForListDto> result = movieContentService.getListOfMinimalMovieForPerson(1L);

        assertNotNull(result);
    }
}