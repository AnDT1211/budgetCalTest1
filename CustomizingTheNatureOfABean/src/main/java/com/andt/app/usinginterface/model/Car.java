package com.andt.app.usinginterface.model;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Component;

@Component
public class Car implements DisposableBean, InitializingBean {

	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println(getClass().getName() + " destroying by DisposableBean.destroy()");
	}

	@Override
	public void destroy() throws Exception {
		System.out.println(getClass().getName() + " initializing by InitializingBean.afterPropertiesSet()");
	}

}
