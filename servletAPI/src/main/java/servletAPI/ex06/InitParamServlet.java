package servletAPI.ex06;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(
		urlPatterns = { 
				"/sInit", 
				"/sInit2"
		}, 
		initParams = { 
				@WebInitParam(name = "email", value = "admin@kjweb.com"), 
				@WebInitParam(name = "tel", value = "010-3333-3333")
		})
public class InitParamServlet extends HttpServlet {

	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		String email=getInitParameter("email");
		String tel=getInitParameter("tel");
		out.print("<html><body>");
		out.print("<p> 이메일 : " + email + "</p>");
		out.print("<p> 휴대폰 : " + tel + "</p>");
		out.print("</body></html>");
	}
}
