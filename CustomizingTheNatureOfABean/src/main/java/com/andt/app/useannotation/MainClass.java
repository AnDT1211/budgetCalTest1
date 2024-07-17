package com.andt.app.useannotation;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.andt.app.useannotation.config.AppConfig;

public class MainClass {
	public static void main(String[] args) {
		new AnnotationConfigApplicationContext(AppConfig.class).close();
	}

}
