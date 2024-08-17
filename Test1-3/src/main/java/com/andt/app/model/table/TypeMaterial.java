package com.andt.app.model.table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TypeMaterial {
	private int id;
	private String name;
	private int id_group_type_spec;
}
