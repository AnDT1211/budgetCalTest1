package com.andt.app;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.andt.app.model.Animal;
import com.andt.app.model.Vehicle;
import com.andt.app.service.AppService;

@SpringBootApplication
public class XmlConfigDemoAppApplication {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("services.xml", "models.xml");
		
		context.getBean(Animal.class).sayHello();
		context.getBean("superCar", Vehicle.class).start();
		((AppService) context.getBean("printService")).print("abcd");
	}

}
