package org.sitefilm.contentservice.dto.main.movie;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MovieTranslation {
    private Long id;
    private String title;
    private String originalTitle;
    private String description;
    private String plotSummary;
}
