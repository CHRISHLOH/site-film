package org.sitefilm.userservice.configuration.security.config;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.configuration.security.auth.TokenCookieAuthenticationConfigurer;
import org.sitefilm.userservice.configuration.security.auth.TokenCookieSessionAuthenticationStrategy;
import org.sitefilm.userservice.configuration.security.csrf.GetCsrfTokenFilter;
import org.sitefilm.userservice.configuration.security.jwt.TokenCookieJwtStringDeserializer;
import org.sitefilm.userservice.configuration.security.jwt.TokenCookieJwtStringSerializer;
import org.sitefilm.userservice.repository.DeactivatedTokenRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.ExceptionTranslationFilter;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;
import org.springframework.security.web.csrf.CsrfTokenRequestAttributeHandler;
import org.springframework.security.web.savedrequest.CookieRequestCache;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity
@RequiredArgsConstructor
public class SecurityConfiguration {

    private final RsaKeyProperties rsaKeyProperties;

    @Bean
    public TokenCookieJwtStringSerializer tokenCookieJweStringSerializer(
    ) throws Exception {
        return new TokenCookieJwtStringSerializer(rsaKeyProperties.getPrivateKey());
    }

    @Bean
    public TokenCookieAuthenticationConfigurer tokenCookieAuthenticationConfigurer(
            DeactivatedTokenRepository deactivatedTokenRepository
    ) throws Exception {
        return new TokenCookieAuthenticationConfigurer()
                .tokenCookieStringDeserializer(
                        new TokenCookieJwtStringDeserializer(
                            rsaKeyProperties.getPublicKey()))
                .deactivatedTokenRepository(deactivatedTokenRepository);
    }

    @Bean
    public SecurityFilterChain securityFilterChain(
            HttpSecurity http,
            TokenCookieAuthenticationConfigurer tokenCookieAuthenticationConfigurer,
            TokenCookieJwtStringSerializer tokenCookieJwtStringSerializer) throws Exception {

        TokenCookieSessionAuthenticationStrategy tokenCookieSessionAuthenticationStrategy = new TokenCookieSessionAuthenticationStrategy();
        tokenCookieSessionAuthenticationStrategy.setTokenStringSerializer(tokenCookieJwtStringSerializer);

        http.httpBasic(Customizer.withDefaults())
                .formLogin(Customizer.withDefaults())
                .addFilterAfter(new GetCsrfTokenFilter(), ExceptionTranslationFilter.class)
                .authorizeHttpRequests(authorizeHttpRequests ->
                        authorizeHttpRequests
                                .requestMatchers(HttpMethod.GET, "login/*").permitAll()
                                .anyRequest().authenticated())
                .sessionManagement(sessionManagement -> sessionManagement
                        .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                        .sessionAuthenticationStrategy(tokenCookieSessionAuthenticationStrategy))
                .csrf(csrf -> csrf.csrfTokenRepository(new CookieCsrfTokenRepository())
                        .csrfTokenRequestHandler(new CsrfTokenRequestAttributeHandler())
                        .sessionAuthenticationStrategy((authentication, request, response) -> {}))
                .requestCache(httpSecurityRequestCacheConfigurer ->
                        httpSecurityRequestCacheConfigurer.requestCache(new CookieRequestCache()));

        http.with(tokenCookieAuthenticationConfigurer, configurer -> {});
        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}