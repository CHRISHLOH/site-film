package org.sitefilm.userservice.dto;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CareerDto {
    private Long id;
    private String career;

    @Override
    public String toString() {
        return "CareerDto{" +
                "id=" + id +
                ", career='" + career + '\'' +
                '}';
    }
}
