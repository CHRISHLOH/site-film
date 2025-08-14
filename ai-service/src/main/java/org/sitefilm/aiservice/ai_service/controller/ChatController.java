package org.sitefilm.aiservice.ai_service.controller;

import org.sitefilm.aiservice.ai_service.dto.ChatRequest;
import org.sitefilm.aiservice.ai_service.dto.ChatResponse;
import org.sitefilm.aiservice.ai_service.service.NluQueryAnalysisService;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.method.annotation.SseEmitter;
import reactor.core.publisher.Flux;

@RestController
@RequestMapping()
public class ChatController {

    private final ChatClient chatClient;
    private final NluQueryAnalysisService service;

    public ChatController(@Qualifier("mainChatClient") ChatClient chatClient, NluQueryAnalysisService service) {
        this.chatClient = chatClient;
        this.service = service;
    }

    @PostMapping(value = "/chat")
    public ChatResponse chat(@RequestBody ChatRequest req) {
        String content = chatClient
                .prompt()
                .advisors(a -> a.param(ChatMemory.CONVERSATION_ID, req.conversationId()))
                .user(req.message())
                .call()
                .content();


        return new ChatResponse(content);
    }

    @GetMapping(value = "/api/ai/user/chat")
    public SseEmitter chatStreamFlux(@RequestBody ChatRequest req) {
        service.test(req);
        return new SseEmitter();
    }
}
