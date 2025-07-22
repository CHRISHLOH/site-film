package org.sitefilm.aiservice.ai_service.controller;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/debug")
public class DebugController {

    private final JdbcTemplate jdbc;

    public DebugController(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    @GetMapping("/memory/{conversationId}")
    public Map<String, Object> getMemoryDebugInfo(@PathVariable String conversationId) {
        Map<String, Object> result = new HashMap<>();

        try {
            // Текущая схема
            String currentSchema = jdbc.queryForObject("SELECT current_schema()", String.class);
            result.put("currentSchema", currentSchema);

            // Search path
            String searchPath = jdbc.queryForObject("SHOW search_path", String.class);
            result.put("searchPath", searchPath);

            // Все таблицы chat_memory
            List<Map<String, Object>> tables = jdbc.queryForList(
                    "SELECT schemaname, tablename FROM pg_tables WHERE tablename LIKE '%chat_memory%'"
            );
            result.put("chatMemoryTables", tables);

            // Проверяем данные в ai_service схеме
            try {
                List<Map<String, Object>> aiServiceRows = jdbc.queryForList(
                        "SELECT * FROM ai_service.spring_ai_chat_memory WHERE conversation_id = ? ORDER BY created",
                        conversationId
                );
                result.put("aiServiceSchemaData", aiServiceRows);
            } catch (Exception e) {
                result.put("aiServiceSchemaError", e.getMessage());
            }

            // Проверяем данные в public схеме
            try {
                List<Map<String, Object>> publicRows = jdbc.queryForList(
                        "SELECT * FROM public.spring_ai_chat_memory WHERE conversation_id = ? ORDER BY created",
                        conversationId
                );
                result.put("publicSchemaData", publicRows);
            } catch (Exception e) {
                result.put("publicSchemaError", e.getMessage());
            }

            // Все данные без фильтра по conversation_id
            try {
                List<Map<String, Object>> allRows = jdbc.queryForList(
                        "SELECT * FROM ai_service.spring_ai_chat_memory ORDER BY created DESC LIMIT 10"
                );
                result.put("allRecentData", allRows);
            } catch (Exception e) {
                result.put("allDataError", e.getMessage());
            }

        } catch (Exception e) {
            result.put("error", e.getMessage());
        }

        return result;
    }

    @GetMapping("/tables")
    public Map<String, Object> getAllTables() {
        Map<String, Object> result = new HashMap<>();

        try {
            List<Map<String, Object>> tables = jdbc.queryForList(
                    "SELECT schemaname, tablename FROM pg_tables WHERE schemaname IN ('public', 'ai_service') ORDER BY schemaname, tablename"
            );
            result.put("tables", tables);

            // Структура таблицы spring_ai_chat_memory
            try {
                List<Map<String, Object>> columns = jdbc.queryForList(
                        "SELECT column_name, data_type, is_nullable FROM information_schema.columns WHERE table_schema = 'ai_service' AND table_name = 'spring_ai_chat_memory' ORDER BY ordinal_position"
                );
                result.put("chatMemoryColumns", columns);
            } catch (Exception e) {
                result.put("columnsError", e.getMessage());
            }

        } catch (Exception e) {
            result.put("error", e.getMessage());
        }

        return result;
    }
}
