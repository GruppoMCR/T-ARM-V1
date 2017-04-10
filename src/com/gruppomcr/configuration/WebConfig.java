//package com.gruppomcr.configuration;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.ViewResolver;
//import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
//import org.springframework.web.servlet.config.annotation.EnableWebMvc;
//import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
//import org.springframework.web.servlet.view.InternalResourceViewResolver;
//
//@EnableWebMvc
//@Configuration
//@ComponentScan("com.gruppomcr.configuration")
//public class WebConfig extends WebMvcConfigurerAdapter{
//	@Override
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
////		registry.addResourceHandler("/resources/css/**").addResourceLocations("/resources/css/");
////		registry.addResourceHandler("/resources/js/**").addResourceLocations("/resources/js/");
////		registry.addResourceHandler("/resources/scss/**").addResourceLocations("/resources/scss/");
////		registry.addResourceHandler("/resources/img/**").addResourceLocations("/resources/img/");
//		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
//		registry.addResourceHandler("WEB-INF/views/pages/**").addResourceLocations("WEB-INF/views/pages/");
//	}
//	
//	@Bean
//	public ViewResolver getViewResolver(){
//		InternalResourceViewResolver internalResourceViewResolver = new InternalResourceViewResolver();
//		internalResourceViewResolver.setPrefix("/WEB-INF/jsp/");
//		internalResourceViewResolver.setSuffix(".jsp");
//		return internalResourceViewResolver;
//		
//	}
//	@Override
//	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
//		configurer.enable();
//	}
//}
