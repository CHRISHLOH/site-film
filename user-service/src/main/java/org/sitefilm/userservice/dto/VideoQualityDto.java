package org.sitefilm.userservice.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class VideoQualityDto {
    private Long id;
    private String videoQuality;
}
