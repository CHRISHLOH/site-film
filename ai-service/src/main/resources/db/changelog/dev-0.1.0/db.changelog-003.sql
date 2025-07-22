CREATE TABLE ai_service.spring_ai_chat_memory (
                                       conversation_id VARCHAR(255) NOT NULL,
                                       created TIMESTAMP NOT NULL,
                                       role VARCHAR(50),
                                       content TEXT
);

-- Индекс для ускорения поиска по conversation_id
CREATE INDEX idx_saichatm_conversation
    ON ai_service.spring_ai_chat_memory (conversation_id);