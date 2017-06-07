package com.gruppomcr.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.Scope;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan({ "com.gruppomcr.configuration" })
@PropertySource(value = { "classpath:/resources/application.properties" })
public class HibernateConfiguration {
	
//	@Autowired
//    private Environment environment;
//	
	
	/** PROPRIETA' CARICATE DALL'APPLICATION.PROPERTIES**/
	@Value("${db.driver}")
	private String PROPERTY_NAME_DB_DRIVER_CLASS;
	
	@Value("${db.url}")
    private String PROPERTY_NAME_DB_URL;
	
	@Value("${db.password}")
    private String PROPERTY_NAME_DB_PASSWORD;
	
	@Value("${db.username}")
    private String PROPERTY_NAME_DB_USER;
	
	@Value("${hibernate.dialect}")
    private String PROPERTY_NAME_HIBERNATE_DIALECT;
	
	@Value("${hibernate.format_sql}")
    private String PROPERTY_NAME_HIBERNATE_FORMAT_SQL;
	
//	@Value("${hibernate.ejb.naming_strategy}")
//    private String PROPERTY_NAME_HIBERNATE_NAMING_STRATEGY;
	
	@Value("${hibernate.show_sql}")
    private String PROPERTY_NAME_HIBERNATE_SHOW_SQL;
	
	@Bean(name="localSessionFactoryBean")
	@Scope(BeanDefinition.SCOPE_SINGLETON)
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan(new String[] { "com.gruppomcr.animali.dao" });
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
     }
     
	@Bean(name="dataSource")
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(PROPERTY_NAME_DB_DRIVER_CLASS);
        dataSource.setUrl(PROPERTY_NAME_DB_URL);
        dataSource.setUsername(PROPERTY_NAME_DB_USER);
        dataSource.setPassword(PROPERTY_NAME_DB_PASSWORD);
        return dataSource;
    }
     
    private Properties hibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.dialect", PROPERTY_NAME_HIBERNATE_DIALECT);
        properties.put("hibernate.show_sql", PROPERTY_NAME_HIBERNATE_SHOW_SQL);
        properties.put("hibernate.format_sql", PROPERTY_NAME_HIBERNATE_FORMAT_SQL);
        return properties;        
    }
     
    @Bean(name="transactionManager")
//    @Scope(BeanDefinition.SCOPE_SINGLETON)
//    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory s) {
       HibernateTransactionManager txManager = new HibernateTransactionManager();
       txManager.setSessionFactory(s);
       return txManager;
    }
}
