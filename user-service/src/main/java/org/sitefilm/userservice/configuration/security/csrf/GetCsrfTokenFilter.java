package org.sitefilm.userservice.configuration.security.csrf;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.Setter;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;
import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.security.web.csrf.CsrfTokenRepository;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.Collections;

@Setter
public class GetCsrfTokenFilter extends OncePerRequestFilter {

    private RequestMatcher requestMatcher = new AntPathRequestMatcher("/csrf", HttpMethod.GET.name());

    private CsrfTokenRepository csrfTokenRepository = new CookieCsrfTokenRepository();

    private ObjectMapper objectMapper = new ObjectMapper();

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        
        if (this.requestMatcher.matches(request)) {
            System.out.println("Начало csrf фильтра сетод doFilterInternal");
            CsrfToken csrfToken = this.csrfTokenRepository.loadDeferredToken(request, response).get();
            
            response.setStatus(HttpServletResponse.SC_OK);
            response.setContentType(MediaType.APPLICATION_JSON_VALUE);
            
            this.objectMapper.writeValue(response.getWriter(), csrfToken);

            if (response.getHeaderNames().contains("Set-Cookie")) {
                System.out.println("[CSRF-ФИЛЬТР] Куки в ответе:");
                for (String cookie : response.getHeaders("Set-Cookie")) {
                    System.out.println("[CSRF-ФИЛЬТР]   " + cookie);
                }
            }
            
            return;
        }
        
        System.out.println("[CSRF-ФИЛЬТР] Запрос не совпадает с эндпоинтом CSRF токена, продолжение цепочки фильтров");
        filterChain.doFilter(request, response);
    }
}
