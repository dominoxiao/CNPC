package com.pms.sup.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.pms.sup.control.SessionName;
import com.pms.sup.entity.TUser;
import com.pms.sup.util.Log;
import com.pms.sup.util.Role;

public class ProviderAuthFilter implements Filter {

	public void init(FilterConfig arg0) throws ServletException {
		 Log.logger.info("ProviderAuthFilter init()");

	}

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;

		Object obj = request.getSession().getAttribute(SessionName.USER);
		if (obj == null) {
			request.setAttribute("msg", "用户尚未登陆");
			java.io.PrintWriter out = response.getWriter();  
		    out.println("<html>");  
		    out.println("<script>");  
		    out.println("window.open ('/PMS/user/login.do','_top')");  
		    out.println("</script>");  
		    out.println("</html>"); 
		} else {
			TUser user = (TUser) obj;
			if ((Role.PROVIDER).equals(user.getRole())) {
				chain.doFilter(req, response);
			} else {
				request.setAttribute("msg", "无访问权限");
				java.io.PrintWriter out = response.getWriter();  
			    out.println("<html>");  
			    out.println("<script>");  
			    out.println("window.open ('/PMS/user/login.do','_top')");  
			    out.println("</script>");  
			    out.println("</html>"); 
			}
		}

	}

}
