package com.sitefilm.etl.application.ex;

public class PersonNotFoundException extends RuntimeException {
    public PersonNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }
}
