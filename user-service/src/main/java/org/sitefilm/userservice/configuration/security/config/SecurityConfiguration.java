package org.sitefilm.userservice.configuration.security.config;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.configuration.security.auth.TokenCookieAuthenticationConfigurer;
import org.sitefilm.userservice.configuration.security.auth.TokenCookieAuthenticationConverter;
import org.sitefilm.userservice.configuration.security.auth.TokenCookieSessionAuthenticationStrategy;
import org.sitefilm.userservice.configuration.security.auth.TokenCookieVerificationConverter;
import org.sitefilm.userservice.configuration.security.csrf.GetCsrfTokenFilter;
import org.sitefilm.userservice.configuration.security.jwt.auth.AuthTokenCookieJwtStringDeserializer;
import org.sitefilm.userservice.configuration.security.jwt.auth.AuthTokenCookieJwtStringSerializer;
import org.sitefilm.userservice.configuration.security.jwt.verification.VerificationTokenCookieJwtStringDeserializer;
import org.sitefilm.userservice.configuration.security.jwt.verification.VerificationTokenCookieJwtStringSerializer;
import org.sitefilm.userservice.configuration.security.ott.handler.TokenCookieGenerationSuccessHandler;
import org.sitefilm.userservice.configuration.security.ott.service.OneTimeTokenLoginService;
import org.sitefilm.userservice.repository.DeactivatedTokenRepository;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;
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
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.OncePerRequestFilter;
import org.springframework.web.util.ContentCachingRequestWrapper;

import java.io.IOException;

import java.util.List;

@Configuration
@EnableWebSecurity()
@EnableMethodSecurity
@RequiredArgsConstructor
public class SecurityConfiguration {

    private final RsaKeyProperties rsaKeyProperties;

    @Bean
    public AuthTokenCookieJwtStringSerializer tokenCookieJweStringSerializer(
    ) throws Exception {
        return new AuthTokenCookieJwtStringSerializer(rsaKeyProperties.getPrivateKey());
    }

    @Bean
    public AuthTokenCookieJwtStringDeserializer tokenCookieJweStringDeserializer(
    ) throws Exception {
        return new AuthTokenCookieJwtStringDeserializer(rsaKeyProperties.getPublicKey());
    }

    @Bean
    public VerificationTokenCookieJwtStringSerializer verificationTokenCookieJwtStringSerializer()
            throws Exception {
        return new VerificationTokenCookieJwtStringSerializer(rsaKeyProperties.getPrivateKey());
    }

    @Bean
    VerificationTokenCookieJwtStringDeserializer verificationTokenCookieJwtStringDeserializer() throws Exception {
        return new VerificationTokenCookieJwtStringDeserializer(rsaKeyProperties.getPublicKey());
    }

    @Bean
    public TokenCookieAuthenticationConfigurer tokenCookieAuthenticationConfigurer(
            DeactivatedTokenRepository deactivatedTokenRepository
    ) throws Exception {
        return new TokenCookieAuthenticationConfigurer()
                .tokenCookieStringDeserializer(
                        new AuthTokenCookieJwtStringDeserializer(
                            rsaKeyProperties.getPublicKey()))
                .deactivatedTokenRepository(deactivatedTokenRepository);
    }

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.setAllowedOrigins(List.of("https://localhost:8444"));
        configuration.setAllowedMethods(List.of("GET", "POST", "PUT", "DELETE", "OPTIONS"));
        configuration.setAllowedHeaders(List.of("*"));
        configuration.setExposedHeaders(List.of("Set-Cookie", "Authorization"));
        configuration.setAllowCredentials(true);

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", configuration);
        return source;
    }

    @Bean
    public SecurityFilterChain securityFilterChain(
            HttpSecurity http,
            TokenCookieAuthenticationConfigurer tokenCookieAuthenticationConfigurer,
            AuthTokenCookieJwtStringDeserializer authTokenCookieJwtStringDeserializer,
            OneTimeTokenLoginService oneTimeTokenLoginService,
            TokenCookieGenerationSuccessHandler tokenCookieGenerationSuccessHandler,
            TokenCookieSessionAuthenticationStrategy tokenCookieSessionAuthenticationStrategy,
            TokenCookieVerificationConverter tokenCookieVerificationConverter
            ) throws Exception {

        TokenCookieAuthenticationConverter converter = new TokenCookieAuthenticationConverter(authTokenCookieJwtStringDeserializer);

        http.httpBasic(Customizer.withDefaults())
                .addFilterAfter(new GetCsrfTokenFilter(), ExceptionTranslationFilter.class)
                .authorizeHttpRequests(authorizeHttpRequests ->
                        authorizeHttpRequests
                                .requestMatchers(HttpMethod.POST, "/login/**").permitAll()
                                .requestMatchers(HttpMethod.GET, "/csrf").permitAll()
                                .requestMatchers(HttpMethod.POST, "/api/auth/register").permitAll()
                                .requestMatchers(HttpMethod.POST, "/ott/generate").permitAll()
                                .anyRequest().authenticated())
                .sessionManagement(sessionManagement -> sessionManagement
                        .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                        .sessionAuthenticationStrategy(tokenCookieSessionAuthenticationStrategy))
                .csrf(csrf -> csrf.csrfTokenRepository(new CookieCsrfTokenRepository())
                        .csrfTokenRequestHandler(new CsrfTokenRequestAttributeHandler())
                        .sessionAuthenticationStrategy((authentication, request, response) -> {}))
                .cors(cors -> cors.configurationSource(corsConfigurationSource()))
                .oneTimeTokenLogin(ott -> ott
                        .tokenGeneratingUrl("/ott/generate")
                        .loginProcessingUrl("/login/ott")
                        .tokenService(oneTimeTokenLoginService)
                        .authenticationConverter(tokenCookieVerificationConverter)
                        .tokenGenerationSuccessHandler(tokenCookieGenerationSuccessHandler)
                        .showDefaultSubmitPage(false));
        http.with(tokenCookieAuthenticationConfigurer, configurer -> {});
        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public FilterRegistrationBean<Filter> requestLoggingFilter() {
        FilterRegistrationBean<Filter> registrationBean = new FilterRegistrationBean<>();
        registrationBean.setFilter(new OncePerRequestFilter() {
            @Override
            protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
                    throws ServletException, IOException {
                ContentCachingRequestWrapper wrappedRequest = new ContentCachingRequestWrapper(request);
                filterChain.doFilter(wrappedRequest, response);
                byte[] buf = wrappedRequest.getContentAsByteArray();
                if (buf.length > 0) {
                    String payload = new String(buf, 0, buf.length, wrappedRequest.getCharacterEncoding());
                    System.out.println("Request Body: " + payload);
                }
                System.out.println("Request URL: " + request.getRequestURL() + ", Method: " + request.getMethod());
                System.out.println("Response Status: " + response.getStatus());
            }
        });
        registrationBean.setOrder(Ordered.HIGHEST_PRECEDENCE);
        return registrationBean;
    }
}