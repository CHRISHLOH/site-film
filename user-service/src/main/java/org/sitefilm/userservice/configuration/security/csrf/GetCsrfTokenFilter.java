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
        System.out.println("=== НАЧАЛО CSRF ФИЛЬТРА ===");
        System.out.println("URL запроса: " + request.getRequestURL());
        System.out.println("Метод запроса: " + request.getMethod());

        // Логирование заголовков
        System.out.println("Заголовки запроса:");
        Collections.list(request.getHeaderNames()).forEach(header ->
                System.out.println("  - " + header + ": " + request.getHeader(header)));

        // Логирование кук
        System.out.println("Куки запроса:");
        if (request.getCookies() != null) {
            for (Cookie cookie : request.getCookies()) {
                System.out.println("  - " + cookie.getName() + ": " + cookie.getValue());
            }
        } else {
            System.out.println("  Куки отсутствуют");
        }

        if (this.requestMatcher.matches(request)) {
            System.out.println("Запрос соответствует CSRF маршруту, формируем токен");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setContentType(MediaType.APPLICATION_JSON_VALUE);

            var token = this.csrfTokenRepository.loadDeferredToken(request, response).get();
            this.objectMapper.writeValue(response.getWriter(), token);

            System.out.println("CSRF токен создан и отправлен: " + token.getToken());
            System.out.println("Заголовки ответа:");
            response.getHeaderNames().forEach(header ->
                    System.out.println("  - " + header + ": " + response.getHeader(header)));

            System.out.println("=== КОНЕЦ CSRF ФИЛЬТРА ===");
            return;
        }

        System.out.println("Запрос не соответствует CSRF маршруту, продолжаем цепочку фильтров");
        System.out.println("=== КОНЕЦ CSRF ФИЛЬТРА ===");
        filterChain.doFilter(request, response);
    }
}
