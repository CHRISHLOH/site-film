package org.sitefilm.userservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.entity.UserProfile;
import org.sitefilm.userservice.repository.UserProfileRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class UserProfileService {

    private final UserProfileRepository userProfileRepository;

    public String createUserProfile(String email){
        return "";
    }

    private UserProfile createCleanUserProfile(String email){
        return UserProfile.builder()
                .createdAt(LocalDateTime.now())
                .build();
    }
}
