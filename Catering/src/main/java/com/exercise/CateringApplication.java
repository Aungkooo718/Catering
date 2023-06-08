package com.exercise;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@SpringBootApplication
public class CateringApplication {

	public static void main(String[] args) {
		SpringApplication.run(CateringApplication.class, args);
	}

}
