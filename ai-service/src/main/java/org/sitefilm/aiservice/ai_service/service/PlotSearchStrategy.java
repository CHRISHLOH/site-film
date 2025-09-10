package org.sitefilm.aiservice.ai_service.service;

import org.sitefilm.aiservice.ai_service.dto.QueryAnalysisDto;
import org.sitefilm.aiservice.ai_service.dto.ShortMovieInformation;
import org.sitefilm.aiservice.ai_service.repository.VectorStoreRepository;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlotSearchStrategy implements SearchStrategy{

    private final ChatClient chatClient;

    private final VectorStoreRepository vectorStoreRepository;

    public PlotSearchStrategy(@Qualifier("mainChatClient") ChatClient chatClient, VectorStoreRepository vectorStoreRepository) {
        this.chatClient = chatClient;
        this.vectorStoreRepository = vectorStoreRepository;
    }

    @Override
    public List<ShortMovieInformation> searchMovie(QueryAnalysisDto query) {
        vectorStoreRepository.findMostSimilar();
        return List.of();
    }
}
