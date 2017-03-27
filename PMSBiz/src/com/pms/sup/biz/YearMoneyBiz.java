package com.pms.sup.biz;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pms.sup.dao.YearMoneyDao;
import com.pms.sup.entity.TYearMoney;

@Service
@Transactional(readOnly=true)
public class YearMoneyBiz {
	
	@Autowired
	private YearMoneyDao yearMoneyDao;
	
	/**
	 * 分页查询年费列表
	 */
	public Map<String, Object> getYearMoneyList(Map<String, Object> map) throws Exception{
		Map<String, Object> result = new HashMap<String, Object>();
		int count = yearMoneyDao.countYearMoney(map);
		List<TYearMoney> list = yearMoneyDao.getYearMoneyList(map);
		result.put("total", count);
		result.put("rows", list);
		return result;
	}
	
	/**
	 * 提交供应商缴费记录
	 */
	public void addYearMoneyRecord(TYearMoney yearMoney) throws Exception{
		yearMoney.setPdate(new Date());
		yearMoneyDao.addYearMoneyRecord(yearMoney);
	}

}
