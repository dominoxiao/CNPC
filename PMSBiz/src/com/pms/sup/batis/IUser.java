package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TUser;

public interface IUser {
	/**
	 * �û���¼
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public TUser login(String uname,String pwd) throws Exception;
	
	
	/**
	 * ��ȡ���ݿ������û�
	 * @return
	 * @throws Exception
	 */
	public List<TUser> getAllUser() throws Exception ; 
	
    /**
     * ���û�ע��
     * @param user
     * @return
     * @throws Exception
     */
	public TUser register(TUser user) throws Exception;
	/**
	 * �޸�Ա�����
	 * @param empno
	 * @throws Exception
	 */
	public void updateEmpno(String empno,String uname) throws Exception;
	public void updateEmpno2(String newempno,String oldnewmpno) throws Exception;
}
