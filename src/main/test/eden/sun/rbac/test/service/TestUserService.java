package eden.sun.rbac.test.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import eden.sun.rbac.service.IUserService;
import eden.sun.rbac.test.TestBase;

public class TestUserService extends TestBase{

	@Autowired
	private IUserService userService;
	
	@Test
	public void testSaveOrUpdate(){
		
	}
}
