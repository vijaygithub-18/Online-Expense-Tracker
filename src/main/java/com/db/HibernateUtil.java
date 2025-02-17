package com.db;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;
import com.entity.Expense;
import com.entity.User;

public class HibernateUtil {
	
    private static SessionFactory sessionFactory;
    
    public static SessionFactory getSessionFactory() {
    	
        if (sessionFactory == null) {
            try {
            	Configuration configuration=new Configuration();

                // Hibernate settings equivalent to hibernate.cfg.xml's properties
                /*Properties settings = new Properties();
                settings.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
                settings.put(Environment.URL, "jdbc:mysql://localhost:3306/expense_tracker_db");
                settings.put(Environment.USER, "root");
                settings.put(Environment.PASS, "qwerty@vijay003");
                settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL8Dialect");
                settings.put(Environment.HBM2DDL_AUTO, "update");
                settings.put(Environment.SHOW_SQL, "true");

               
                configuration.setProperties(settings);

                configuration.addAnnotatedClass(User.class);
                configuration.addAnnotatedClass(Expense.class);

                StandardServiceRegistryBuilder serviceRegistryBuilder = new StandardServiceRegistryBuilder();
                
                ServiceRegistry serviceRegistry = serviceRegistryBuilder.build(); 
                
                sessionFactory = configuration.buildSessionFactory(serviceRegistry);
            
            
        }
        return sessionFactory;
    }
}
*/
            	Properties settings = new Properties();
                settings.put(Environment.DRIVER, "com.mysql.jdbc.Driver");
                settings.put(Environment.URL, "jdbc:mysql://localhost:3306/expense_tracker_db?useSSL=false");
                settings.put(Environment.USER, "root");
                settings.put(Environment.PASS, "qwerty@vijay003");
                settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");

                settings.put(Environment.SHOW_SQL, "true");

                settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");

                settings.put(Environment.HBM2DDL_AUTO, "update");

                configuration.setProperties(settings);
                configuration.addAnnotatedClass(User.class);
                configuration.addAnnotatedClass(Expense.class);

                ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                    .applySettings(configuration.getProperties()).build();
                System.out.println("Hibernate Java Config serviceRegistry created");
                sessionFactory = configuration.buildSessionFactory(serviceRegistry);
                return sessionFactory;

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return sessionFactory;
    }
}