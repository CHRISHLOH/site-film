package org.sitefilm.userservice.dto.main.user;

import lombok.*;
import org.sitefilm.userservice.entity.User;

import java.util.Set;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RoleDto {
    private Long id;
    private String name;
    private Set<User> users;
}