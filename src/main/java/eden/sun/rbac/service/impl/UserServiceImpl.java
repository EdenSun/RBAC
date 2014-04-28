package eden.sun.rbac.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import eden.sun.rbac.dao.UserMapper;
import eden.sun.rbac.exception.ServiceException;
import eden.sun.rbac.service.IUserService;

@Service
public class UserServiceImpl implements IUserService{
	@Autowired
	private UserMapper userMapper;

	
	
}
