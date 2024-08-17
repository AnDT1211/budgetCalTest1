package com.andt.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.andt.app.model.table.TypeMaterial;
import com.andt.app.service.MB001Service;

@RestController("/")
public class MB001Controller {

	@Autowired
	MB001Service service;

	@GetMapping("getalltypematerial")
	public List<TypeMaterial> getAllTypeMaterial() {
		return service.getAllMaterials();
	}
	
	@GetMapping
	public String hello() {
		return "hello";
	}
}
