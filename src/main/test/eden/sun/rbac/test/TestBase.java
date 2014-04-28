package eden.sun.rbac.test;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import eden.sun.rbac.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations = { 
		"classpath:/eden/sun/rbac/config/spring/applicationContext.xml", 
		"classpath:/eden/sun/rbac/config/spring/spring-mvc.xml" }) 
public class TestBase {
	protected final Logger logger = Logger.getLogger(this.getClass());  
    
}
