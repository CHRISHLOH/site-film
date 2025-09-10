package org.sitefilm.aiservice.ai_service.service;

import lombok.extern.slf4j.Slf4j;
import org.sitefilm.aiservice.ai_service.dto.QueryAnalysisDto;
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
            You are an expert in analyzing user queries. Your task is to analyze the query and generate a json of the following type:
            {
                "searchType": "plot|metadata|hybrid|general",
                "description": "string or null",
                "minReleaseDate": "YYYY-MM-DD or null",
                "maxReleaseDate": "YYYY-MM-DD or null",
                "minDuration": "PT#H#M or null",
                "maxDuration": "PT#H#M or null",
                "country": "string or null",
                "genres": ["string1", "string2"] or null,
                "audioMovieFormats": ["string1", "string2"] or null,
                "videoQuality": ["string1", "string2"] or null,
                "actors": ["string1", "string2"] or null,
                "directors": ["string1", "string2"] or null,
                "plotSummary": "string or null",
                "minRating": "decimal or null",
                "maxRating": "decimal or null"
            }
            
            User query: {userQuery}
            Field values: searchType:
            You need to determine the query value based on 4 options:
                plot - if the user in the query focuses only on retelling the plot and asks to find a movie by its content.
                metadata - if the user asks to find a movie by actors, directors, genres, release date, duration, country of production, voice-over language, video quality, or movie rating.
                hybrid - if the user combines searching by metadata and movie plot (the user's request contains data suitable for determining both plot and metadata).
                general - if the request does not contain anything related to movies. description: If the request contains a description of the movie, it should be in this field.
            
            minReleaseDate: If the user wants to find movies limited by a certain date in the request at the lower limit.
            Also consider the context of the request, if the request uses the words "new", "modern", "fresh" or other synonymous words, set the limit to 2023.
            If the request has an intensifying form, for example: "too new", "very fresh" or synonymous expressions, set the limit from 2025.
            Note: If the user specifies an exact minimum date and it is clear from the request that the user wants to limit the list by the lower limit by the release date of the film,
            for example: "I want to watch a film, some new one from 2013", then from the request we select, namely, the exact date and specify it in the field (in this case, in the example minReleaseDate: 2013-01-01).
            
            maxReleaseDate: If the user in the request wants to find films limited to a certain date by the upper limit.
            Also consider the context of the request, if the request uses the words "old", "long-standing", "classic" or other synonymous words, set the limit 2000.
            If the query contains an intensifying form, for example: "too old", "very ancient" or synonymous expressions, set the limit to 1980.
            Note: If the user specifies an exact maximum date and it is clear from the query that the user wants to limit the list by the upper limit by the release date of the film,
            for example: "I want to watch a film, some new one before 2010", then we select the exact date from the query and specify it in the field (in this case, in the example maxReleaseDate: 2010-01-01).
            
            minDuration: If the user in the query wants to find films limited to a certain duration by the lower limit.
            Also consider the context of the query. If the query uses the words "long", "lengthy", "prolonged", or other synonymous words, set the value for the field to 90 minutes.
            If the query contains an intensifying form, such as: "very long", "very long" or other synonymous expressions, then set the value for the field to 120 minutes.
            Note: If the user specifies the exact duration of the film, such as: "I want to watch a film that is more than 70 minutes", specify the exact value. (In this case, in the example minDuration: PT1H10M)
            
            maxDuration: If the user wants to find films in the query that are limited to a certain duration at the upper limit.
            Also consider the context of the query. If the query uses the words "short", "small", "little", or other synonymous words, set the value for the field to 90 minutes.
            If the query contains an intensifying form, such as: "very short", "very small" or other synonymous expressions, then set the value for the field to 60 minutes.
            Note: If the user specifies the exact duration of the movie, for example: "I want to watch a movie that is less than 80 minutes", specify the exact value. (in this case, in the example maxDuration: PT1H20M)
            
            country: If the user specifies the country of production of the movie in the request.
            
            genres: If the user specifies the genres of the movie in the request.
                Available options: Drama, Comedy, Action, Thriller, Fantasy, Science Fiction, Adventure, Horror, Romance, Mystery
            Note: When choosing genres, analyze the context and mood of the request. If the genre does not fully match, select the most similar ones to the description of the request.
            Select options only from the available list.
            
            audioMovieFormats: If the user specifies the language of the movie's audio.
            Available options: English, Spanish, French, German.
            Note: Select only from the available list.
            
            videoQuality: If the user specifies the quality of the video of the movie
            Available options: HD, Full HD, 4K, 8K
            Note: Consider the context of the user's request. Depending on the meaning of the word, indicate the most suitable option,
            for example: "In good quality" -> HD, "In excellent quality" -> Full HD, "In ideal quality" -> 4K.
            Also select similar options by quality, for example: 720p -> HD, 1080p -> Full HD.
            Also, if the user specifies the exact quality of the film, use it in the field value, for example: "I want to watch a film in good quality, I think full hd will do."
            in this case, the value for the field will be ["Full HD"].
            Note:
            If there is not a complete match, select the most suitable option in terms of quality, or the one that is suitable for the context of the request.
            
            actors: If the request contains the names of actors or their mentions, the values should be in this field.
            Note: Take into account grammatical errors, missing letters and incorrect spelling of the names and surnames of actors and select the most suitable famous actor for the user's request.
            
            directors: If the request contains the names of directors or their mentions, the values should be in this field.
            Note: Consider grammatical errors, missing letters, and incorrect spelling of actors' names and surnames, and select the most suitable famous director for the user's query.
            
            plotSummary: If the query contains a plot of the film or a description of the events of the film, they should be in this field.
            Note: fill in the field only if there is a specific description of the plot of the film, as well as the events that took place in the film.
            It is also important to fill in the field only if searchType: plot/hybrid. Also, if the field is plot/hybrid it cannot be null.
            
            minRating: If the query mentions the film's rating at the lower limit, it should be in this field.
            Note: Also consider the context and mood of the query. The higher the mood of the query, the higher the rating,
            for example: "good film" -> 7.0, "Excellent film" -> 8.0, "perfect film" -> 9.0 . For synonymous words, consider the meaning of the word and its enhancing effect.
            
            maxRating: If the request mentions the film's rating at the upper limit, it should be in this field.
            Note: Also consider the context and mood of the request. The higher the mood of the request, the higher the rating,
            for example: "normal film" -> 6.0, "bad film" -> 5.0, "terrible film" -> 4.0 . For synonymous words, consider the meaning of the word and its enhancing effect.
            """;

    public NluQueryAnalysisService(ChatClient nluChatClient) {
        this.nluChatClient = nluChatClient;
    }

    public QueryAnalysisDto analyseQuery(ChatRequest chatRequest) {
        QueryAnalysisDto content = nluChatClient
                .prompt(NLU_PROMPT.replace("{userQuery}", chatRequest.message()))
                .advisors(a -> a.param(ChatMemory.CONVERSATION_ID, chatRequest.conversationId()))
                .user(chatRequest.message())
                .call()
                .entity(QueryAnalysisDto.class);

        System.out.println(content);
        return content;
    }
}
