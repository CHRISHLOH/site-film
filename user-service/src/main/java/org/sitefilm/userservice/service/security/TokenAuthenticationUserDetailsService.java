package org.sitefilm.userservice.service.security;

import org.sitefilm.userservice.configuration.security.jwt.model.Token;
import org.sitefilm.userservice.configuration.security.auth.TokenUser;
import org.sitefilm.userservice.repository.DeactivatedTokenRepository;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.AuthenticationUserDetailsService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.stream.Collectors;

@Service
public class TokenAuthenticationUserDetailsService
        implements AuthenticationUserDetailsService<PreAuthenticatedAuthenticationToken> {

    private final DeactivatedTokenRepository deactivatedTokenRepository;

    public TokenAuthenticationUserDetailsService(DeactivatedTokenRepository deactivatedTokenRepository) {
        this.deactivatedTokenRepository = deactivatedTokenRepository;
    }

    @Override
    public UserDetails loadUserDetails(PreAuthenticatedAuthenticationToken authenticationToken)
            throws UsernameNotFoundException {
        System.out.println("---------------------" +
                "------------------------" +
                "loadUSERDETAILs" +
                "----------------------");
        if (authenticationToken.getPrincipal() instanceof Token token) {
            boolean isTokenActive = !deactivatedTokenRepository.existsById(token.id()) &&
                    token.expiresAt().isAfter(Instant.now());
            return new TokenUser(token.subject(), "nopassword", true, true,
                    isTokenActive, true,
                    token.authorities().stream()
                            .map(SimpleGrantedAuthority::new)
                            .collect(Collectors.toList()), token);
        }
        throw new UsernameNotFoundException("Principal must be of type Token");
    }
}
