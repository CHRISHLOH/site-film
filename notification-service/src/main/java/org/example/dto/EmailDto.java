package org.example.dto;

public record EmailDto(
        String from,
        String to,
        String subject,
        String body)
{}
