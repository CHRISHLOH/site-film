package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.main.user.UserProfileDto;
import org.sitefilm.contentservice.entity.main.UserProfile;

@Mapper(componentModel = "spring")
public interface UserProfileMapper {
    UserProfileMapper INSTANCE = Mappers.getMapper(UserProfileMapper.class);

    UserProfileDto userProfileToUserProfileDto(UserProfile userProfile);
}
