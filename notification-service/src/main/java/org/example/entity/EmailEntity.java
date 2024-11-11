package org.example.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "email_message")
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class EmailEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Column(name = "sender",  nullable = false)
    String from;

    @Column(name = "recipient",  nullable = false)
    String to;

    @Column(name = "subject",  nullable = false)
    String subject;

    @Column(name = "body",  nullable = false)
    String body;
}
