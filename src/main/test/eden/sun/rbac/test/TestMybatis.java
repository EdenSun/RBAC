package eden.sun.rbac.test;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import eden.sun.rbac.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)  
@ContextConfiguration(locations = { "classpath:/eden/sun/rbac/config/spring/applicationContext.xml", "classpath:/eden/sun/rbac/config/spring/spring-mvc.xml" }) 
public class TestMybatis {
	private static final Logger logger = Logger.getLogger(TestMybatis.class);  
    
	@Autowired  
    private IUserService userService;  
      
    @Test  
    public void test1() {  
//        User u = userService.selectByPrimaryKey("1");  
//        logger.info(JSON.toJSONStringWithDateFormat(u, "yyyy-MM-dd HH:mm:ss"));  
    	logger.info( "********************ss" );
    	logger.info( userService );
    	
    }  
}
