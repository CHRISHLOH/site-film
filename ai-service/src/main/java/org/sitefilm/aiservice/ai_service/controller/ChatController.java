package org.sitefilm.aiservice.ai_service.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import org.sitefilm.aiservice.ai_service.dto.chat.ChatRequest;
import org.sitefilm.aiservice.ai_service.dto.chat.ChatResponse;
import org.sitefilm.aiservice.ai_service.service.AIMainChatService;
import org.sitefilm.aiservice.ai_service.service.NluQueryAnalysisService;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;
import reactor.core.publisher.Flux;

@RestController
@RequestMapping()
public class ChatController {

    private final ChatClient chatClient;
    private final AIMainChatService service;

    public ChatController(@Qualifier("mainChatClient") ChatClient chatClient, AIMainChatService service) {
        this.chatClient = chatClient;
        this.service = service;
    }

    @PostMapping(value = "/chat")
    public ChatResponse chat(@RequestBody ChatRequest req) throws JsonProcessingException {
        service.generateResponse(req);
        return new ChatResponse("content");
    }

    @PostMapping(value = "/api/ai/user/chat")
    public Flux<String> chatStreamFlux(@RequestBody ChatRequest req) throws JsonProcessingException {
        return service.generateResponse(req);
    }
}
