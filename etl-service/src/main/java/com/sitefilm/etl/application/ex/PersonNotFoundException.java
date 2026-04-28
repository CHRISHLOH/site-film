package com.sitefilm.etl.application.ex;

import lombok.Getter;

@Getter
public class PersonNotFoundException extends RuntimeException {
    private final Long personId;

    public PersonNotFoundException(Long personId, String message, Throwable cause) {
        super(message, cause);
        this.personId = personId;
    }
}
