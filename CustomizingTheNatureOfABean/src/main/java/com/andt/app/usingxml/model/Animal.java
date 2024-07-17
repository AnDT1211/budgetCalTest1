package com.andt.app.usingxml.model;

public class Animal {
	public void initAnimal() {
		System.out.println(getClass().getName() + " initializing by Animal.initAnimal()");
	}
	
	public void destroyAnimal() {
		System.out.println(getClass().getName() + " destroying by Animal.destroyAnimal()");
	}
}
