package demorkmjava.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers("/home", "/navfal", "/contact", "/about", "/cart", "/aerox", "/fz", "/fzs", "/fzx", "/mt03", "/mt15", "/r3", "/r15", "/r15m", "/r15s", "/rayzr").permitAll()  // Allow access to /home, /navfal, and /about without authentication
                        .anyRequest().permitAll()  // Allow all other requests without authentication
                );

        return http.build();
    }
}
