package com.pms.sup.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pms.sup.batis.IUser;
import com.pms.sup.entity.TUser;

@Repository("userDao")
public class UserDao extends BaseDao{
	@Autowired
	private IUser userMapper;

	/**
	 * 获取数据库所有用户
	 * @return
	 * @throws Exception
	 */
	public List<TUser> getAllUser() throws Exception {
		
		return userMapper.getAllUser();
	}
	
	 /**
     * 用户登录验证
     * @param uname
     * @param pwd
     * @return
     */
	public TUser login(String uname,String pwd) throws Exception{	
		
		TUser curUser = userMapper.login(uname,pwd);
		
		return curUser;
	}
	
	/**
	 * 新用户注册
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public TUser register(TUser user) throws Exception{
		
		TUser newUser = userMapper.register(user);
		
		return newUser;
	}

}
