package com.pms.sup.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import com.pms.sup.control.SessionName;
import com.pms.sup.util.Log;

public class UserAuthFilter implements Filter {

	/**
	 * 需要排除的页面
	 */
	private String excludedPages;
	private String[] excludedPageArray;

	public void init(FilterConfig arg0) throws ServletException {
		Log.logger.info("UserAuthFilter init()");
		excludedPages = arg0.getInitParameter("excludedPages");
		if (StringUtils.isNotEmpty(excludedPages)) {
			excludedPageArray = excludedPages.split(",");
		}		
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest req, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;

		boolean isExcludedPage = false;
		for (String page : excludedPageArray) {
			// 判断是否在过滤url之外
			if (((HttpServletRequest) request).getServletPath().equals(page)) {
				isExcludedPage = true;
				break;
			}
		}

		if (isExcludedPage) {
			chain.doFilter(req, response);
		} else {
			Object obj = request.getSession(true)
					.getAttribute(SessionName.USER);
			if (obj == null) {
				request.setAttribute("msg", "用户尚未登陆");
				request.getRequestDispatcher("/user/login.do")
						.forward(request, response);
				
				
			} else {
				chain.doFilter(req, response);
			}
		}
	}

}
