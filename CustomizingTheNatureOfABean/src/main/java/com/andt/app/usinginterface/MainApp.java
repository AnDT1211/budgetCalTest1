package com.andt.app.usinginterface;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.andt.app.usinginterface.config.AppConfig;


public class MainApp {
	public static void main(String[] args) {
//		SpringApplication.run(AppConfig.class, args);
		// or
		AnnotationConfigApplicationContext context =  new AnnotationConfigApplicationContext(AppConfig.class);
		context.close();	// manual close the context to trigger destroy()
	}
}
