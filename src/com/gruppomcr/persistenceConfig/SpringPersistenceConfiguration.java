package com.gruppomcr.persistenceConfig;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.web.config.EnableSpringDataWebSupport;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

/**
 * Classe invocata a runtime dal core di Spring. 
 * Imposta la connessione al database,
 * crea l'EntityManagerFactory e il transaction manager.
 * Per far si che venga invocata, deve essere annotata con
 * <code>@Configuration</code> ed essere dichiarata con l'attributo 
 * <code>context:component-scan</code>
 * in un file visibile dal deployment descriptor (spring-persistence.xml).
 * 
 * @version 1.0 <br>
 * 
 */
@Configuration
@EnableJpaRepositories(basePackages = {"com.gruppomcr.repositories"})
/**Scansione Services**/
@ComponentScan(basePackages="com.gruppomcr.services")
/**Scansione file di properties**/
@PropertySource("classpath:/resources/application.properties")
@EnableTransactionManagement
@EnableSpringDataWebSupport
public class SpringPersistenceConfiguration {
	
	private static final String[] ENTITY_PACKAGES = {"com.gruppomcr.entities"};
	
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
	
	@Value("${hibernate.ejb.naming_strategy}")
    private String PROPERTY_NAME_HIBERNATE_NAMING_STRATEGY;
	
	@Value("${hibernate.show_sql}")
    private String PROPERTY_NAME_HIBERNATE_SHOW_SQL;
	
    
    /**Inizializzazione pool JDBC**/
    @Bean(destroyMethod = "close")
    public DataSource dataSource() {
    	
	        HikariConfig dataSourceConfig = new HikariConfig();
	        dataSourceConfig.setDriverClassName(PROPERTY_NAME_DB_DRIVER_CLASS);
	        dataSourceConfig.setJdbcUrl(PROPERTY_NAME_DB_URL);
	        dataSourceConfig.setUsername(PROPERTY_NAME_DB_USER);
	        dataSourceConfig.setPassword(PROPERTY_NAME_DB_PASSWORD);
	        
	        dataSourceConfig.setMaximumPoolSize(100);
	        
	        return new HikariDataSource(dataSourceConfig);
    }
    
    /** inizializzazione container delle entita' **/
    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource dataSource) {
    	
        LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
        entityManagerFactoryBean.setDataSource(dataSource);
        entityManagerFactoryBean.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
        entityManagerFactoryBean.setPackagesToScan(ENTITY_PACKAGES);

        Properties jpaProperties = new Properties();

        jpaProperties.put("hibernate.dialect", PROPERTY_NAME_HIBERNATE_DIALECT);

        jpaProperties.put("hibernate.ejb.naming_strategy", PROPERTY_NAME_HIBERNATE_NAMING_STRATEGY);

        jpaProperties.put("hibernate.show_sql", PROPERTY_NAME_HIBERNATE_SHOW_SQL);

        jpaProperties.put("hibernate.format_sql", PROPERTY_NAME_HIBERNATE_FORMAT_SQL);

        entityManagerFactoryBean.setJpaProperties(jpaProperties);

        return entityManagerFactoryBean;
    }

    /**abilitazione supporto transazionale **/
    @Bean
    public JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {
	        JpaTransactionManager transactionManager = new JpaTransactionManager();
	        transactionManager.setEntityManagerFactory(entityManagerFactory);
	        return transactionManager;
    }
    
}
