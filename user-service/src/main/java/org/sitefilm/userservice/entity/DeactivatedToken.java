package org.sitefilm.userservice.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.Instant;
import java.util.UUID;

@Entity
@Table(name = "t_deactivated_token", schema = "management_system")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class DeactivatedToken {
    @Id
    private UUID id;

    @Column(name = "c_keep_until")
    private Instant keepUntil;
}
