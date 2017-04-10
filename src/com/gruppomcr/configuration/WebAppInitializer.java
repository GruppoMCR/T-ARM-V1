//package com.gruppomcr.configuration;
//
//import javax.servlet.ServletContext;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRegistration;
//
//import org.springframework.web.WebApplicationInitializer;
//import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
//import org.springframework.web.servlet.DispatcherServlet;
//
//public class WebAppInitializer implements WebApplicationInitializer{
//	
//	private static final String config_location = "com.gruppomcr.configuration";
//
//	@Override
//	public void onStartup(ServletContext servletContext) throws ServletException {
//		System.out.println("***** Initializing Application for " + servletContext.getServerInfo() + " *****");
//		
//		// Creates application context
//		AnnotationConfigWebApplicationContext applicationContext = new AnnotationConfigWebApplicationContext();
//		applicationContext.setConfigLocation(config_location);
//		
//		// Add the servlet mapping manually and make it initialize automatically
//		DispatcherServlet dispatcherServlet = new DispatcherServlet(applicationContext);
//		ServletRegistration.Dynamic servletRegistration = servletContext.addServlet("mvc-dispatcher", dispatcherServlet);
//		
//		servletRegistration.addMapping("/");
//		servletRegistration.setAsyncSupported(true);
//		servletRegistration.setLoadOnStartup(1);
//	}
//
//}
