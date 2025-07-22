CREATE TABLE ai_service.spring_ai_chat_memory (
                                                  conversation_id VARCHAR(255) NOT NULL,
                                                  content TEXT NOT NULL,
                                                  type VARCHAR(50) NOT NULL,
                                                  timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_saichatm_conversation
    ON ai_service.spring_ai_chat_memory (conversation_id);