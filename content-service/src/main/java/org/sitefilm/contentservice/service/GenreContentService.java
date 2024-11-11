package org.sitefilm.contentservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.GenreDto;
import org.sitefilm.contentservice.entity.Genre;
import org.sitefilm.contentservice.mapper.GenreMapper;
import org.sitefilm.contentservice.repository.GenreRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@Transactional
@RequiredArgsConstructor
public class GenreContentService {
    private final GenreRepository genreRepository;
    private final GenreMapper genreMapper;

    public List<GenreDto> getAllGenres() {
        return genreRepository.findAll().stream().map(genreMapper::genreToGenreDto).collect(Collectors.toList());
    }

    public GenreDto getGenreById(Long id) {
        if (id == null) {
            throw new RuntimeException();
        }
        Optional<Genre> optionalGenre = genreRepository.findById(id);
        if (optionalGenre.isEmpty()) {
            throw new RuntimeException();
        }
        return genreMapper.genreToGenreDto(optionalGenre.get());
    }

    public GenreDto createGenre(GenreDto newGenreDto) {
        if (newGenreDto == null) {
            throw new RuntimeException();
        }
        return genreMapper.genreToGenreDto(
                genreRepository.save(
                        genreMapper.genreDtoToGenre(newGenreDto)));
    }

    public GenreDto updateGenre(GenreDto updatedGenreDto) {
        genreRepository.findById(updatedGenreDto.id())
                .ifPresentOrElse(
                        genre ->
                                genre.setGenre(updatedGenreDto.genre()),
                        () -> {
                            throw new RuntimeException();
                        });

        return updatedGenreDto;
    }

    public void deleteGenre(Long id) {
        if (id == null) {
            throw new RuntimeException();
        }
        genreRepository.deleteById(id);
    }
}
