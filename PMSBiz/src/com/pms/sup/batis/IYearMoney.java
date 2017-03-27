package com.pms.sup.batis;

import java.util.List;
import java.util.Map;

import com.pms.sup.entity.TYearMoney;

public interface IYearMoney {
	
	public List<TYearMoney> findYearMoneyList(Map<String, Object> map) throws Exception;
	
	public Integer countYearMoney(Map<String, Object> map) throws Exception;
	
	public void addYearMoneyRecord(TYearMoney yearMoney) throws Exception;
	
	

}
