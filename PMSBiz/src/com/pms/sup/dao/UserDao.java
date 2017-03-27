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
	 * ��ȡ���ݿ������û�
	 * @return
	 * @throws Exception
	 */
	public List<TUser> getAllUser() throws Exception {
		
		return userMapper.getAllUser();
	}
	
	 /**
     * �û���¼��֤
     * @param uname
     * @param pwd
     * @return
     */
	public TUser login(String uname,String pwd) throws Exception{	
		
		TUser curUser = userMapper.login(uname,pwd);
		
		return curUser;
	}
	
	/**
	 * ���û�ע��
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public TUser register(TUser user) throws Exception{
		
		TUser newUser = userMapper.register(user);
		
		return newUser;
	}

}
