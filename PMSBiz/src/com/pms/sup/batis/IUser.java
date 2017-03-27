package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TUser;

public interface IUser {
	/**
	 * 用户登录
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public TUser login(String uname,String pwd) throws Exception;
	
	
	/**
	 * 获取数据库所有用户
	 * @return
	 * @throws Exception
	 */
	public List<TUser> getAllUser() throws Exception ; 
	
    /**
     * 新用户注册
     * @param user
     * @return
     * @throws Exception
     */
	public TUser register(TUser user) throws Exception;
	/**
	 * 修改员工编号
	 * @param empno
	 * @throws Exception
	 */
	public void updateEmpno(String empno,String uname) throws Exception;
	public void updateEmpno2(String newempno,String oldnewmpno) throws Exception;
}
