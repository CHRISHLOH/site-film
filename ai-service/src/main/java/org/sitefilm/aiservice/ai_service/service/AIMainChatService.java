package org.sitefilm.aiservice.ai_service.service;

import org.sitefilm.aiservice.ai_service.dto.QueryAnalysisDto;
import org.sitefilm.aiservice.ai_service.dto.ShortMovieInformation;
import org.sitefilm.aiservice.ai_service.dto.chat.ChatRequest;
import org.sitefilm.aiservice.ai_service.repository.VectorStoreRepository;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.ai.vectorstore.VectorStore;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;

import java.util.List;

@Service
public class AIMainChatService {

    private final NluQueryAnalysisService nluService;

    @Qualifier("mainChatClient")
    private final ChatClient mainChatClient;

    private final SearchStrategyFactory searchStrategyFactory;

    private static final String CHAT_PROMPT = """
            Ты помошник по поиску фильмов, на основе списка фильмов сформируй конечный ответ как дружелюный человек.
            Список фильмов:
            {films}
            """;

    public AIMainChatService(NluQueryAnalysisService nluService, ChatClient mainChatClient, SearchStrategyFactory searchStrategyFactory) {
        this.nluService = nluService;
        this.mainChatClient = mainChatClient;
        this.searchStrategyFactory = searchStrategyFactory;
    }

    public Flux<String> generateResponse(ChatRequest query) {
        QueryAnalysisDto analysisDto = nluService.analyseQuery(query);
        List<ShortMovieInformation> movieInformation = searchStrategyFactory.apply(analysisDto);
        return mainChatClient
                .prompt(CHAT_PROMPT.replace("{films}", movieInformation.toString()))
                .stream().content();
    }

}
