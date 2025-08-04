package org.sitefilm.aiservice.ai_service.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.aiservice.ai_service.dto.FullMovieDto;
import org.sitefilm.aiservice.ai_service.dto.GenreDto;
import org.sitefilm.aiservice.ai_service.dto.NamePeopleDto;
import org.springframework.ai.document.Document;
import org.springframework.ai.embedding.EmbeddingModel;
import org.springframework.ai.vectorstore.VectorStore;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@Service
@RequiredArgsConstructor
public class AIContentService {
    private final EmbeddingModel embeddingModel;
    private final VectorStore vectorStore;
    private final ContentServiceRestClient restClient;

    public String createEmbedding(){
        List<FullMovieDto> listOfMovies = restClient.getContent();
        var docs = listOfMovies.stream()
                .map(movie ->
                        Document.builder()
                                .id(movie.getId().toString())
                                .text(movie.getPlot())
                                .metadata(Map.of("filmId", movie.getId(),
                                        "title", movie.getTitle(),
                                        "rating", movie.getRating(),
                                        "genre", movie.getGenres().stream().map(GenreDto::genre).toList(),
                                        "actors", movie.getActors().stream().map(a -> a.getName() + " " + a.getLastName())
                                                .collect(Collectors.joining(", ")),
                                        "director", movie.getDirectors().stream().map(a -> a.getName() + " " + a.getLastName())
                                                .collect(Collectors.joining(", ")),
                                        "audioLang", movie.getAudioMovieFormats(),
                                        "videoQuality", movie.getVideoQuality()
                                        ))
                                        .build())
                .toList();



        vectorStore.add(docs);
        return "Отработал";
    }
}
