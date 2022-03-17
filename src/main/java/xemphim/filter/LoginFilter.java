package xemphim.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import xemphim.model.Nguoidung;

/**
 * Servlet Filter implementation class LoginFilter
 * check user is logged in or not
 */
@WebFilter("/admin/*")
public class LoginFilter implements Filter {


	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		HttpSession session = req.getSession();
		
		Nguoidung n = (Nguoidung) session.getAttribute("user");
		if (n == null) {
			//redirectAttributes.addFlashAttribute("message", "Vui lòng đăng nhập trước");
			System.out.println("Please login first!");
			res.sendRedirect(req.getContextPath()+"/login");
			return;
		}
		//check permission
		if(!n.getPermission().equals("admin")) {
			System.out.println("Don't have permission to access this page");
			res.sendRedirect(req.getContextPath()+"/");
			return;
		}
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
