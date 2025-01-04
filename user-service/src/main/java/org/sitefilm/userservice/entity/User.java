package org.sitefilm.userservice.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.util.*;


@Entity
@Table(name = "users", schema = "user_service")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class User{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column(name = "created_at", nullable = false, updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    @CreationTimestamp
    private Date createdAt;

    @Column(name = "updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    @UpdateTimestamp
    private Date updatedAt;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "users_roles",
            schema = "user_service",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Set <Role> roles = new HashSet<>();
}
