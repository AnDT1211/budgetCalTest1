package com.andt.app.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.andt.app.model.table.TypeMaterial;

public interface MB001Service {
	List<TypeMaterial> getAllMaterials();
}
