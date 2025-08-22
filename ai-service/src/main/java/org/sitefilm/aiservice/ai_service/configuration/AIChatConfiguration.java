package org.sitefilm.aiservice.ai_service.configuration;


import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.client.advisor.MessageChatMemoryAdvisor;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.ai.chat.memory.ChatMemoryRepository;
import org.springframework.ai.chat.memory.MessageWindowChatMemory;
import org.springframework.ai.ollama.api.OllamaOptions;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AIChatConfiguration {

    @Bean
    @Qualifier("nluChatClient")
    public ChatClient nluChatClient(ChatClient.Builder builder) {
        return builder
                .defaultOptions(OllamaOptions.builder()
                        .temperature(0.0)
                        .topK(1)
                        .topP(0.0)
                        .numPredict(300)
                        .numCtx(4096)
                        .repeatPenalty(1.0)
                        .presencePenalty(0.0)
                        .frequencyPenalty(0.0)
                        .useMMap(true)
                        .useMLock(false)
                        .lowVRAM(true)
                        .f16KV(true)
                        .format("json")
                        .build())
                .build();
    }

    @Bean
    @Qualifier("mainChatClient")
    public ChatClient mainChatClient(ChatClient.Builder builder, ChatMemoryRepository repo) {
        ChatMemory memory = MessageWindowChatMemory.builder()
                .chatMemoryRepository(repo)
                .maxMessages(50)
                .build();

        return builder
                .defaultOptions(OllamaOptions.builder()
                        .temperature(0.7)
                        .topK(50)
                        .topP(0.92)
                        .numPredict(800)
                        .numCtx(8192)
                        .repeatPenalty(1.15)
                        .presencePenalty(0.2)
                        .frequencyPenalty(0.2)
                        .useMMap(true)
                        .useMLock(false)
                        .lowVRAM(true)
                        .f16KV(true)
                        .build())
                .defaultAdvisors(MessageChatMemoryAdvisor.builder(memory).build())
                .build();
    }
    
}
