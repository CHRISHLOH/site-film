package org.sitefilm.userservice.configuration.security.ott;

import lombok.Builder;
import lombok.Setter;
import org.springframework.security.authentication.ott.OneTimeToken;

import java.time.Instant;

@Builder
@Setter
public class TokenOTT implements OneTimeToken {

    private String token;
    private String username;
    private Instant expires;


    @Override
    public String getTokenValue() {
        return this.token;
    }

    @Override
    public String getUsername() {
        return this.username;
    }

    @Override
    public Instant getExpiresAt() {
        return this.expires;
    }
}
