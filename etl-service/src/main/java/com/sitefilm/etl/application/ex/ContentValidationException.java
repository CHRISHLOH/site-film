package com.sitefilm.etl.application.ex;

public class ContentValidationException extends RuntimeException {
    public ContentValidationException(String message) {
        super(message);
    }
}
