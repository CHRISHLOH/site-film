package org.sitefilm.contentservice.dto.main.person;

import lombok.*;
import org.sitefilm.contentservice.dto.CareerDto;

import java.util.Set;

@Getter
@Setter
@Builder
@AllArgsConstructor
public class MinimalPersonDto{
    private Long id;
    private String firstName;
    private String lastName;
    private Set<CareerDto> careers;
}
