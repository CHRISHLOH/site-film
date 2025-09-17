package org.sitefilm.contentservice.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "careers", schema = "content_service")
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Career {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "code", nullable = false, unique = true)
    private String career;

    @OneToMany(mappedBy = "career", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<CareerTranslation> translations = new ArrayList<>();
}
