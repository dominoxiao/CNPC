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
	 * ��ҳ��ѯ����б�
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
	 * �ύ��Ӧ�̽ɷѼ�¼
	 */
	public void addYearMoneyRecord(TYearMoney yearMoney) throws Exception{
		yearMoney.setPdate(new Date());
		yearMoneyDao.addYearMoneyRecord(yearMoney);
	}

}
