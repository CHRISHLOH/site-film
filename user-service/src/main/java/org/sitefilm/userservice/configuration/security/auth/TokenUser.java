package org.sitefilm.userservice.configuration.security.auth;

import lombok.Getter;
import org.sitefilm.userservice.configuration.security.jwt.model.AuthToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

@Getter
public class TokenUser extends User {

    private final AuthToken authToken;

    public TokenUser(String username, String password, Collection<? extends GrantedAuthority> authorities, AuthToken authToken) {
        super(username, password, authorities);
        this.authToken = authToken;
    }

    public TokenUser(String username, String password, boolean enabled, boolean accountNonExpired,
                     boolean credentialsNonExpired, boolean accountNonLocked,
                     Collection<? extends GrantedAuthority> authorities, AuthToken authToken) {
        super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
        this.authToken = authToken;
    }
}
