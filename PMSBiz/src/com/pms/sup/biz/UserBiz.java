package com.pms.sup.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pms.sup.dao.UserDao;
import com.pms.sup.entity.TUser;

@Service("userBiz")
@Transactional(readOnly=true)
public class UserBiz {
	@Autowired
	private UserDao userDao;
	
	
	/*
	 * ��ȡ�����û�
	 */
	public List<TUser> getAllUser() throws Exception {
		List<TUser> allUser;

		try{
			allUser = userDao.getAllUser();
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		return allUser;
	}
	
	/*
	 * �û���¼������Ա�����Լ���Ӧ�̣�
	 */
	public TUser login(String uname,String pwd) throws Exception {
		TUser curUser;
		
		try{
			curUser = userDao.login(uname,pwd);
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		return curUser;
	}
	
	/*
	 * ��Ӧ��Ԥע��
	 */
	public void register(TUser user) throws Exception {

	     user.setEmpno("0-"+Long.toString(System.currentTimeMillis()));
	     user.setRole("1");

	     try{
	    	 userDao.register(user);
	     } catch (Exception e) {
	    	 e.printStackTrace();
	    	 throw e;
	     } 

	}	

}
