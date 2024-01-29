package com.skilldistillery.pokemon;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@EntityScan("com.skilldistillery.pokemon")
@SpringBootApplication
public class BootMvcPokemonCollectorApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootMvcPokemonCollectorApplication.class, args);
	}

}
