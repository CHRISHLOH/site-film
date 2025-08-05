package org.sitefilm.aiservice.ai_service.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.sitefilm.aiservice.ai_service.dto.*;
import org.springframework.ai.document.Document;
import org.springframework.ai.embedding.EmbeddingModel;
import org.springframework.ai.vectorstore.VectorStore;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@Service
@RequiredArgsConstructor
@Slf4j
public class AIContentService {
    private final EmbeddingModel embeddingModel;
    private final VectorStore vectorStore;
    private final ContentServiceRestClient restClient;

    public String createEmbedding(){
        List<FullMovieDto> listOfMovies = restClient.getContent();

        listOfMovies.stream()
                .filter(m -> m.getId().equals(11L))
                .findFirst()
                .ifPresent(m ->
                        m.getActors().stream()
                                .map(a -> a.getName() + " " + a.getLastName())
                                .forEach(System.out::println)
                );
        listOfMovies.stream()
                .filter(m -> m.getId().equals(11L))
                .findFirst()
                .ifPresent(m ->
                        m.getDirectors().stream()
                                .map(a -> a.getName() + " " + a.getLastName())
                                .forEach(System.out::println)
                );


        log.info("Получено {} фильмов из content-service", listOfMovies.size());

        listOfMovies.stream().limit(3).forEach(movie ->
                log.info("Фильм ID: {}, Title: {}, Plot: {}",
                        movie.getId(), movie.getTitle(),
                        movie.getPlotSummary() != null ? movie.getPlotSummary().substring(0, Math.min(50, movie.getPlotSummary().length())) + "..." : "NULL")
        );

        List<Document> docs = listOfMovies.stream()
                .filter(movie -> movie.getPlotSummary() != null && !movie.getPlotSummary().trim().isEmpty())
                .map(movie -> {
                    String plotText = movie.getPlotSummary().trim();
                    if (plotText.length() < 10) {
                        plotText = movie.getDescription() != null && !movie.getDescription().trim().isEmpty()
                                ? movie.getDescription().trim()
                                : movie.getTitle() + " - фильм";
                    }
                    Map<String, Object> metadata = new HashMap<>();
                    metadata.put("filmId", movie.getId().toString());
                    metadata.put("originalFilmId", movie.getId());
                    metadata.put("title", movie.getTitle() != null ? movie.getTitle() : "Неизвестно");
                    metadata.put("rating", movie.getRating() != null ? movie.getRating().toString() : "0");
                    metadata.put("genre", movie.getGenres() != null ? movie.getGenres().stream()
                            .map(GenreDto::genre)
                            .collect(Collectors.joining(", ")) : "");
                    metadata.put("actors", movie.getActors() != null ? movie.getActors().stream()
                            .map(a -> a.getName() + " " + a.getLastName())
                            .collect(Collectors.joining(", ")) : "");
                    metadata.put("director", movie.getDirectors() != null ? movie.getDirectors().stream()
                            .map(a -> a.getName() + " " + a.getLastName())
                            .collect(Collectors.joining(", ")) : "");
                    metadata.put("audioLang", movie.getAudioMovieFormats() != null ? movie.getAudioMovieFormats().stream()
                            .map(MovieAudioLanguageDto::getAudioLanguage)
                            .collect(Collectors.joining(", ")) : "");
                    metadata.put("videoQuality", movie.getVideoQuality() != null ? movie.getVideoQuality().stream()
                            .map(VideoQualityDto::getVideoQuality)
                            .collect(Collectors.joining(", ")) : "");

                    return Document.builder()
                            .text(plotText)
                            .metadata(metadata)
                            .build();
                })
                .toList();

        log.info("Отфильтровано {} документов для embedding", docs.size());
        if (docs.isEmpty()) {
            return "Нет фильмов с валидным описанием для создания embedding";
        }

        // Обрабатываем документы батчами по 10 штук
        int batchSize = 10;
        int totalBatches = (int) Math.ceil((double) docs.size() / batchSize);

        log.info("Начинаем создание embeddings батчами по {} документов. Всего батчей: {}", batchSize, totalBatches);

        for (int i = 0; i < docs.size(); i += batchSize) {
            int endIndex = Math.min(i + batchSize, docs.size());
            List<Document> batch = docs.subList(i, endIndex);

            int currentBatch = (i / batchSize) + 1;
            log.info("Обрабатываем батч {}/{} ({} документов)...", currentBatch, totalBatches, batch.size());

            try {
                long startTime = System.currentTimeMillis();
                vectorStore.add(batch);
                long endTime = System.currentTimeMillis();

                log.info("Батч {}/{} завершен за {} мс", currentBatch, totalBatches, (endTime - startTime));
            } catch (Exception e) {
                log.error("Ошибка при обработке батча {}/{}: {}", currentBatch, totalBatches, e.getMessage());
                return "Ошибка при создании embedding на батче " + currentBatch + ": " + e.getMessage();
            }
        }

        log.info("Все embeddings созданы успешно!");
        return "Embedding создан успешно для " + docs.size() + " фильмов из " + listOfMovies.size();
    }
}