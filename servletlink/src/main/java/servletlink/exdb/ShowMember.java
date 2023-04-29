package servletlink.exdb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/show")
public class ShowMember extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   response.setContentType("text/html;charset=utf-8");
	   PrintWriter out=response.getWriter();
	   Boolean isLogon=false;
	   HttpSession session=request.getSession(false);
	   if(session !=null) {
		   isLogon=(Boolean)session.getAttribute("isLogon");
		   if(isLogon) {
			  String id=(String)session.getAttribute("log_id");
		      out.print("<html><body>");
		      out.print("<p>" + id+ "님은 골드회원이라 할인권이 있습니다.");
	          out.print("<p>할인권을 이용해서 쇼핑을 즐겨보세요</p>");	   
		   }else {
			   response.sendRedirect("logindb.html");
		   }
	   
	   }else {
		   response.sendRedirect("logindb.html");
		   
	   }
	}

}