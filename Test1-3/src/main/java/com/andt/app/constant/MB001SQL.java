package com.andt.app.constant;

public interface MB001SQL {
	String s001 = """
			SELECT 
				id, 
				name, 
				id_group_type_spec 
			FROM 
				type_material;""";
}
