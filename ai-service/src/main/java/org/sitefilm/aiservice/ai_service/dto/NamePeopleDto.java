package org.sitefilm.aiservice.ai_service.dto;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class NamePeopleDto {
    private Long id;
    private String name;
    private String lastName;
}
