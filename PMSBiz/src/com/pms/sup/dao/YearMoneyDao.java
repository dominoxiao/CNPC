package com.pms.sup.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pms.sup.batis.IYearMoney;
import com.pms.sup.entity.TYearMoney;

@Repository("yearMoneyDao")
public class YearMoneyDao {
	
	@Autowired
	IYearMoney yearMoneyMapper;
	
	/**
	 * ��ȡ��Ѽ�¼����
	 */
	public Integer countYearMoney(Map<String, Object> map) throws Exception{
		return yearMoneyMapper.countYearMoney(map);
	}
	
	/**
	 * ��ҳ��ȡ��Ѽ�¼
	 */
	public List<TYearMoney> getYearMoneyList(Map<String, Object> map) throws Exception{
		return yearMoneyMapper.findYearMoneyList(map);
	}
	
	/**
	 * �ύ�ɷѼ�¼
	 */
	public void addYearMoneyRecord(TYearMoney yearMoney) throws Exception{
		yearMoneyMapper.addYearMoneyRecord(yearMoney);
	}

}
