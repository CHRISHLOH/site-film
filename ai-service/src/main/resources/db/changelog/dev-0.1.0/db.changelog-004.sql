-- ai-service/src/main/resources/db/changelog/dev-0.1.0/db.changelog-004.sql

-- Удаляем старую таблицу если она существует
DROP TABLE IF EXISTS ai_service.spring_ai_chat_memory;

-- Создаем таблицу со структурой, которую ожидает Spring AI
-- Важно: Spring AI использует именно такие названия колонок
CREATE TABLE ai_service.spring_ai_chat_memory (
                                                  conversation_id VARCHAR(255) NOT NULL,
                                                  content TEXT NOT NULL,
                                                  type VARCHAR(50) NOT NULL,  -- Spring AI использует 'type' вместо 'role'
                                                  "timestamp" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP  -- Spring AI использует timestamp
);

-- Создаем индекс для быстрого поиска по conversation_id и времени
CREATE INDEX idx_spring_ai_chat_memory_conversation_timestamp
    ON ai_service.spring_ai_chat_memory (conversation_id, "timestamp");

-- Создаем составной индекс для оптимизации запросов
CREATE INDEX idx_spring_ai_chat_memory_conversation_type
    ON ai_service.spring_ai_chat_memory (conversation_id, type);