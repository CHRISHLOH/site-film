package org.sitefilm.aiservice.ai_service.controller;

import org.sitefilm.aiservice.ai_service.dto.ChatRequest;
import org.sitefilm.aiservice.ai_service.dto.ChatResponse;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/chat")
public class ChatController {

    private final ChatClient chatClient;
    private final JdbcTemplate jdbc;

    public ChatController(ChatClient chatClient, JdbcTemplate jdbc) {
        this.chatClient = chatClient;
        this.jdbc = jdbc;
    }

    @PostMapping
    public ChatResponse chat(@RequestBody ChatRequest req) {
        var reply = chatClient
                .prompt()
                .advisors(a -> a.param(ChatMemory.CONVERSATION_ID, req.conversationId()))
                .user(req.message())
                .call()
                .content();

        // → Вставляем логирование истории в консоль
        List<Map<String,Object>> rows = jdbc.queryForList(
                "SELECT conversation_id, role, content FROM ai_service.spring_ai_chat_memory WHERE conversation_id = ?",
                req.conversationId()
        );
        System.out.println("Chat memory rows for " + req.conversationId() + ":");
        for (var r : rows) {
            System.out.printf("  [%s] %s: %s%n", r.get("role"), r.get("content"));
        }
        if (rows.isEmpty()) {
            System.out.println("  (no rows found)");
        }

        return new ChatResponse(reply);
    }
}
