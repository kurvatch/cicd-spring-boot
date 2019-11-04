package com.cicd.cicdspringboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class CicdSpringBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(CicdSpringBootApplication.class, args);
	}

	@RestController
	public class CICDRestController {
		
		@GetMapping("/hello")
		public String hello() {
			return "Hello CICD Rest Conttoller";
		}
	}
}
