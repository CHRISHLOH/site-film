package org.sitefilm.aiservice.ai_service.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.sitefilm.aiservice.ai_service.dto.ChatRequest;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class NluQueryAnalysisService {

    @Qualifier("nluChatClient")
    private final ChatClient nluChatClient;

    private static final String NLU_PROMPT = """
        Ты - эксперт по анализу запросов пользователей о поиске фильмов. Твоя задача - понять что хочет пользователь, несмотря на ошибки, опечатки и неточности.
        
        Проанализируй запрос и верни JSON в следующем формате:
        {
            "search_type": "PLOT|METADATA|HYBRID|GENERAL",
            "plot_keywords": ["ключевые", "слова", "для", "поиска"],
            "genres": ["жанры"],
            "actors": ["актёры"],
            "directors": ["режиссёры"],
            "duration_min": число_минут_или_null,
            "duration_max": число_минут_или_null,
            "min_rating": число_от_0_до_10_или_null,
            "audio_language": "язык_или_null",
            "video_quality": "качество_или_null",
            "original_query": "исходный_запрос_пользователя"
        }
        
        Правила:
        1. search_type: "PLOT" если ищут по сюжету, "METADATA" если по актёрам/жанрам/режиссёрам, "HYBRID" если и то и то, "GENERAL" если общий запрос
        2. Извлекай ключевые слова даже из слов с ошибками (например "любовь" из "любви", "Брэд Питт" из "бред пит")
        3. Переводи время в минуты (1.5 часа = 90 минут)
        4. Определяй жанры по ключевым словам ("про любовь" = романтика, "страшный" = ужасы)
        5. Возвращай ТОЛЬКО JSON, без дополнительного текста
        
        Запрос пользователя: {userQuery}
        """;

    public NluQueryAnalysisService(ChatClient nluChatClient) {
        this.nluChatClient = nluChatClient;
    }

    public void test(ChatRequest chatRequest) {
        String content = nluChatClient
                .prompt(NLU_PROMPT)
                .advisors(a -> a.param(ChatMemory.CONVERSATION_ID, chatRequest.conversationId()))
                .user(chatRequest.message())
                .call()
                .content();
        System.out.println(content);
    }

}
