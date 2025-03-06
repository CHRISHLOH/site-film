package org.sitefilm.contentservice.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.sitefilm.contentservice.dto.main.user.UserProfileDto;
import org.sitefilm.contentservice.service.UserContentService;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("content-api/user")
public class UserInfoController {

    private final UserContentService service;

    @GetMapping
    public ResponseEntity<UserProfileDto> getAllUserInfo (@AuthenticationPrincipal Jwt jwt) {
    return ResponseEntity.ok(service.findUserProfileById(jwt));
    }
}
