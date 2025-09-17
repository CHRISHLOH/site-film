package org.sitefilm.aiservice.ai_service.service;

import org.sitefilm.aiservice.ai_service.dto.QueryAnalysisDto;
import org.sitefilm.aiservice.ai_service.dto.ShortMovieInformation;
import org.springframework.ai.document.Document;
import org.springframework.ai.vectorstore.SearchRequest;
import org.springframework.ai.vectorstore.VectorStore;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class PlotSearchStrategy implements SearchStrategy{


    private final VectorStore vectorStore;

    public PlotSearchStrategy(VectorStore vectorStore) {
        this.vectorStore = vectorStore;
    }

    @Override
    public List<ShortMovieInformation> searchMovie(QueryAnalysisDto query) {
        List<Document> moviesFromDB = vectorStore.similaritySearch(
                SearchRequest.builder()
                        .query(query.getPlotSummary())
                        .topK(5)
                        .build());

        List<ShortMovieInformation> list = moviesFromDB.stream()
                .map(doc -> {
                    Map<String, Object> metadata = doc.getMetadata();
                    String title = metadata.getOrDefault("title", "").toString();
                    return new ShortMovieInformation(doc.getId(), title);
                })
                .toList();

        for (ShortMovieInformation shortMovieInformation : list) {
            System.out.println(shortMovieInformation);
        }
        return list;
    }
}
