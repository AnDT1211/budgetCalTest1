package com.andt.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;

public class MainService {
	@Autowired
	PlatformTransactionManager transactionManager;

	@Autowired
	NamedParameterJdbcTemplate template;
}
