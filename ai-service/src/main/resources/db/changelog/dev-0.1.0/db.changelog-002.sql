CREATE TABLE ai_service.vector_store (
                              id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                              content TEXT NOT NULL,
                              metadata JSON,
                              embedding VECTOR(1024) NOT NULL
);

-- Создание индекса HNSW для векторного поиска
CREATE INDEX idx_vector_store_embedding
    ON ai_service.vector_store
        USING HNSW (embedding vector_cosine_ops);