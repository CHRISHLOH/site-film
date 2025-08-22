package org.sitefilm.aiservice.ai_service.service;

import lombok.extern.slf4j.Slf4j;
import org.sitefilm.aiservice.ai_service.dto.chat.ChatRequest;
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
            Ты эксперт по анализу пользовательских запросов пользователя. Твоя задача проанализировать запрос и сформировать json типа
            {
                  "searchType": null,
                  "description": null,
                  "minReleaseDate": null,
                  "maxReleaseDate": null,
                  "minDuration": null,
                  "maxDuration": null,
                  "country": null,
                  "genres": ["null", "null"],
                  "audioMovieFormats": null,
                  "videoQuality": ["null", "null"],
                  "actors": ["null", "null"],
                  "directors": null,
                  "plotSummary": null,
                  "minRating": null,
                  "maxRating": null
                }
             Запрос пользователя сначала переведи на английский язык и ориентируйся на его перевод
             Запрос пользователя: {userQuery}
       
             Значение полей:
                searchType: Нужно определить значение запрос исходя из 4 вариантов:
                    plot - если пользователь в запросе делает акцент на пересказ сюжета и просит найти фильм по его содержанию.
                    metadata - если пользователь просит найти фильм по актерам, режиссерам, жанрам, дате выхода, хронометражу, стране производства, языку озвучки, качеству видео или рейтингу фильма.
                    hybrid - если пользователь совмещает поиск по метадате и сюжету фильма (запрос пользователя содержит данные подходящие для определения как plot, так и metadata).
                    general - если в запросе не содержится ничего связанного с фильмами.
                description: Если в запросе содержится описание фильма оно должно находиться в этом поле.
                minReleaseDate: Если пользователь в запросе хочет найти фильмы ограничивающиеся определенноый датой по нижней границе.
                maxReleaseDate: Если пользователь в запросе хочет найти фильмы ограничивающиеся определенноый датой по верхней границе.
                minDuration: Если пользователь в запросе хочет найти фильмы ограничивающиеся определенным хронометражем по нижней границе.
                maxDuration: Если пользователь в запросе хочет найти фильмы ограничивающиеся определенным хронометражем по верхней границе.
                country: Если пользователь в запросе указывает страну производства фильма.
                genres: Если пользователь в запросе указывает жанры фильма.
                    Доступные варианты: Drama, Comedy, Action, Thriller, Fantasy, Science Fiction, Adventure, Horror, Romance,Mystery
                    Примичание: При выборе жанров анализировать контекст, настроение запроса. При не полном совпадениии жанра подбирать макимально похожие под описание запроса.
                audioMovieFormats: Если пользователь указывает язык озвучки фильма.
                    Доступные варианты: English, Spanish, French, German
                videoQuality: Если пользователь указывает качество видео фильма
                    Доступные врианты: HD, Full HD, 4K, 8K
                    Примичание: При не полном совпадении, выбирать наиболее подходящий по качеству вариант, или подходящий по контексту запроса.
                actors: Если в запросе присутствуют имен актеров или их упоминания, значения должны быть ы этом поле.
                directors: Если в запросе присутствуют имен режиссеров или их упоминания, значения должны быть ы этом поле.
                plotSummary: Если в запросе содержится сюжет фильма или описание событий фильма, то они должны находиться в этом поле.
                minRating: Если в запросе есть упоминание рейтинга фильма по нижней границе, то оно должно находиться в этом поле.
                maxRating: Если в запросе есть упоминание рейтинга фильма по верхней границе, то оно должно находиться в этом поле.
        """;

    public NluQueryAnalysisService(ChatClient nluChatClient) {
        this.nluChatClient = nluChatClient;
    }

    public void test(ChatRequest chatRequest) {
        String content = nluChatClient
                .prompt(NLU_PROMPT.replace("{userQuery}", chatRequest.message()))
                .advisors(a -> a.param(ChatMemory.CONVERSATION_ID, chatRequest.conversationId()))
                .user(chatRequest.message())
                .call()
                .content();
        System.out.println(content);
    }
}
