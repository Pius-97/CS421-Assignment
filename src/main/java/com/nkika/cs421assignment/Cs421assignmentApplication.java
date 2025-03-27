package com.nkika.cs421assignment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories

public class Cs421assignmentApplication {

    public static void main(String[] args) {
        SpringApplication.run(Cs421assignmentApplication.class, args);
    }

}
