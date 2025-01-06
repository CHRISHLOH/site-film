package org.sitefilm.userservice.dto.main.person;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.sitefilm.userservice.dto.CareerDto;


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
