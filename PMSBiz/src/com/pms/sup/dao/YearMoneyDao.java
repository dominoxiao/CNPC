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
	 * 获取年费记录总数
	 */
	public Integer countYearMoney(Map<String, Object> map) throws Exception{
		return yearMoneyMapper.countYearMoney(map);
	}
	
	/**
	 * 分页获取年费记录
	 */
	public List<TYearMoney> getYearMoneyList(Map<String, Object> map) throws Exception{
		return yearMoneyMapper.findYearMoneyList(map);
	}
	
	/**
	 * 提交缴费记录
	 */
	public void addYearMoneyRecord(TYearMoney yearMoney) throws Exception{
		yearMoneyMapper.addYearMoneyRecord(yearMoney);
	}

}
