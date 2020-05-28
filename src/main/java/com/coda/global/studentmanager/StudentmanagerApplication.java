package com.coda.global.studentmanager;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
@ComponentScan({"com.coda.global.studentmanager.*"})
public class StudentmanagerApplication implements WebMvcConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(StudentmanagerApplication.class, args);
	}

}
