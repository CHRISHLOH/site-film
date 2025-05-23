package org.sitefilm.userservice.enums;

import lombok.Getter;

@Getter
public enum TokenType {

    VERIFICATION("VERIFICATION"),
    ACCESS("ACCESS");

    private final String tokenType;

    TokenType(String tokenType) {
        this.tokenType = tokenType;
    }
}
