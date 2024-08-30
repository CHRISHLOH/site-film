package org.sitefilm.userservice.dto;

import java.util.Date;
import java.util.Set;

public record UserDto(Long id,
                      String email,
                      String password,
                      Date createdAt,
                      Date updatedAt,
                      Set<RoleDto> roles) {
}