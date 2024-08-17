package com.andt.app.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;

import com.andt.app.constant.MB001SQL;
import com.andt.app.model.table.TypeMaterial;


@Service
public class MB001ServiceImpl extends MainService implements MB001Service {
	
	@Override
	public List<TypeMaterial> getAllMaterials() {
		return template.queryForStream(MB001SQL.s001, new HashMap<>(), new RowMapper<TypeMaterial>() {
			@Override
			public TypeMaterial mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new TypeMaterial(rs.getInt("id"), rs.getString("name"), rs.getInt("id_group_type_spec"));
			}
		}).peek(System.out::println).collect(Collectors.toList());
	}

}
