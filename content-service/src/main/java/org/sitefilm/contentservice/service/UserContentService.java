package org.sitefilm.contentservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.main.user.UserProfileDto;
import org.sitefilm.contentservice.mapper.UserProfileMapper;
import org.sitefilm.contentservice.repository.UserRepository;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Service
@RequiredArgsConstructor
public class UserContentService {
    private final UserRepository userRepository;
    private final UserProfileMapper profileMapper;

    @Transactional(readOnly = true)
    public UserProfileDto findUserProfileById(Jwt jwt) {
        return profileMapper.userProfileToUserProfileDto(userRepository.findUserInfoByUuid(UUID.fromString(jwt.getClaim("sub"))));
    }
}
