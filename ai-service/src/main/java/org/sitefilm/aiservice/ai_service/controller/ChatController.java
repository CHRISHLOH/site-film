package org.sitefilm.aiservice.ai_service.controller;

import org.sitefilm.aiservice.ai_service.dto.ChatRequest;
import org.sitefilm.aiservice.ai_service.dto.ChatResponse;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.annotation.Transactional;
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
    @Transactional
    public ChatResponse chat(@RequestBody ChatRequest req) {
        System.out.println("=== BEFORE CHAT ===");
        checkChatMemory(req.conversationId());
        checkAllSchemas();

        var reply = chatClient
                .prompt()
                .advisors(a -> a.param(ChatMemory.CONVERSATION_ID, req.conversationId()))
                .user(req.message())
                .call()
                .content();

        System.out.println("=== AFTER CHAT ===");
        checkChatMemory(req.conversationId());

        // Принудительно сбрасываем транзакцию
        jdbc.execute("COMMIT");

        System.out.println("=== AFTER COMMIT ===");
        checkChatMemory(req.conversationId());

        return new ChatResponse(reply);
    }

    private void checkChatMemory(String conversationId) {
        try {
            // Проверяем в основной схеме
            List<Map<String, Object>> rows = jdbc.queryForList(
                    "SELECT conversation_id, role, content, created FROM ai_service.spring_ai_chat_memory WHERE conversation_id = ? ORDER BY created",
                    conversationId
            );
            System.out.println("Chat memory rows in ai_service schema for " + conversationId + ":");
            printRows(rows);

            // Проверяем в public схеме
            List<Map<String, Object>> publicRows = jdbc.queryForList(
                    "SELECT conversation_id, role, content, created FROM ai_service.spring_ai_chat_memory WHERE conversation_id = ? ORDER BY created",
                    conversationId
            );
            System.out.println("Chat memory rows in public schema for " + conversationId + ":");
            printRows(publicRows);

        } catch (Exception e) {
            System.out.println("Error checking chat memory: " + e.getMessage());

            // Проверим все таблицы с похожим именем
            try {
                List<Map<String, Object>> tables = jdbc.queryForList(
                        "SELECT schemaname, tablename FROM pg_tables WHERE tablename LIKE '%chat_memory%'"
                );
                System.out.println("Found chat_memory tables:");
                for (var table : tables) {
                    System.out.printf("  %s.%s%n", table.get("schemaname"), table.get("tablename"));
                }
            } catch (Exception e2) {
                System.out.println("Error checking tables: " + e2.getMessage());
            }
        }
    }

    private void checkAllSchemas() {
        try {
            // Проверяем текущую схему
            String currentSchema = jdbc.queryForObject("SELECT current_schema()", String.class);
            System.out.println("Current schema: " + currentSchema);

            // Проверяем search_path
            String searchPath = jdbc.queryForObject("SHOW search_path", String.class);
            System.out.println("Search path: " + searchPath);

            // Проверяем все схемы
            List<Map<String, Object>> schemas = jdbc.queryForList(
                    "SELECT schema_name FROM information_schema.schemata ORDER BY schema_name"
            );
            System.out.println("Available schemas:");
            for (var schema : schemas) {
                System.out.println("  " + schema.get("schema_name"));
            }

        } catch (Exception e) {
            System.out.println("Error checking schemas: " + e.getMessage());
        }
    }

    private void printRows(List<Map<String, Object>> rows) {
        if (rows.isEmpty()) {
            System.out.println("  (no rows found)");
        } else {
            for (var r : rows) {
                System.out.printf("  [%s] %s: %s (created: %s)%n",
                        r.get("role"),
                        r.get("conversation_id"),
                        r.get("content"),
                        r.get("created"));
            }
        }
    }
}
