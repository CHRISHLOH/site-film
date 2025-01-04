package org.sitefilm.userservice.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


import java.util.Objects;

@Entity
@Table(name = "roles", schema = "user_service")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "role", nullable = false)
    private String role;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Role role1 = (Role) o;
        return Objects.equals(id, role1.id) && Objects.equals(role, role1.role);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, role);
    }
}
