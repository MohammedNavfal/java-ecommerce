
package demorkmjava;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication(
		exclude = {
				SecurityAutoConfiguration.class // Exclude Spring Security auto-configuration
				//DataSourceAutoConfiguration.class   // Exclude JDBC DataSource auto-configuration
		}
)
@ComponentScan(basePackages = {
		"demorkmjava.controller",   // Scans controllers
		"demorkmjava.service",
		"demorkmjava.dto" // Scans DTOs (not mandatory but explicit inclusion is okay)
})
@EnableJpaRepositories(basePackages = "demorkmjava.repository") // Enables scanning for JPA repositories
@EntityScan(basePackages = "demorkmjava.model") // Ensures entity classes are scanned

public class DemorkmjavaApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemorkmjavaApplication.class, args);
	}
}

