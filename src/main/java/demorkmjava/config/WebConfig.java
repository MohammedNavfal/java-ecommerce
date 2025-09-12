package demorkmjava.config;



import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        // Set prefix to /WEB-INF/views/ and suffix to .jsp
        registry.jsp("/WEB-INF/views/", ".jsp");
    }
}

