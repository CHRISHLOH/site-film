package org.sitefilm.aiservice.ai_service.controller;

import org.sitefilm.aiservice.ai_service.dto.ChatRequest;
import org.sitefilm.aiservice.ai_service.dto.ChatResponse;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/chat")
public class ChatController {

    private final ChatClient chatClient;

    public ChatController(ChatClient chatClient) {
        this.chatClient = chatClient;
    }

    @PostMapping
    public ChatResponse chat(@RequestBody ChatRequest req) {
        String content = chatClient
                .prompt()
                .advisors(a -> a.param(ChatMemory.CONVERSATION_ID, req.conversationId()))
                .user(req.message())
                .call()
                .content();

        return new ChatResponse(content);
    }
}
