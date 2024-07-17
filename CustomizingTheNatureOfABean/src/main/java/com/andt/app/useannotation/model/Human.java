package com.andt.app.useannotation.model;

import org.springframework.stereotype.Component;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;

@Component
public class Human {
	@PostConstruct
	public void initHuman() {
		System.out.println(getClass().getName() + " initializing by Human.initHuman()");
	}
	
	@PreDestroy
	public void destroyHuman() {
		System.out.println(getClass().getName() + " destroying by Human.destroyHuman()");
	}
}
