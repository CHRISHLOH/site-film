package org.sitefilm.adminservice.dto.emaildto;

public record EmailDto(
        String from,
        String to,
        String subject,
        String body) {}