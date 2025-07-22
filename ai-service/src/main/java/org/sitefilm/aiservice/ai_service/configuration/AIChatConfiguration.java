package org.sitefilm.aiservice.ai_service.configuration;

import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.client.advisor.MessageChatMemoryAdvisor;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.ai.chat.memory.ChatMemoryRepository;
import org.springframework.ai.chat.memory.MessageWindowChatMemory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AIChatConfiguration {

    @Bean
    public ChatClient chatClient(ChatClient.Builder builder, ChatMemoryRepository repo) {
        ChatMemory memory = MessageWindowChatMemory.builder()
                .chatMemoryRepository(repo)
                .maxMessages(50)
                .build();

        return builder
                .defaultAdvisors(MessageChatMemoryAdvisor.builder(memory).build())
                .build();
    }
}
