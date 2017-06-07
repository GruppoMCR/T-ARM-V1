package com.gruppomcr.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.gruppomcr.animali.dao.Cane;
import com.gruppomcr.animali.service.CaniService;
import com.gruppomcr.configuration.AppConfig;

public class TestHibernate {
	 public static void main(String args[]) {
//		 AbstractApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
//		 AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
//		 context.register(AppConfig.class);
		 ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
		 CaniService caniService = (CaniService) context.getBean("caniService");
		 
		 Cane cane = new Cane();
		 cane.setId(121);
		 cane.setNome("Test");
		 
		 caniService.salvaCane(cane);
		 List<Cane> test = caniService.recuperaTuttiCani();
		 for(Cane c : test){
			 System.out.println(c.toString());
		 }
//		 context.
	 }
}
