package servletlink.ex04;

import java.io.IOException;


import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/session2")
public class SessionTest2 extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    response.setContentType("text/html;charset=utf-8");
	    PrintWriter out=response.getWriter();
	    HttpSession session=request.getSession();
	    out.print("세션 아이디: " + session.getId()+ "<br>");
	    out.print("최초 세션 생성 시간: " +new Date(session.getCreationTime()) +"<br>" );
	    out.print("최초 세션 접근 시간: " +new Date(session.getLastAccessedTime()) +"<br>" );
	    session.setMaxInactiveInterval(60);
	    out.print("세션 유효 시간:" + session.getMaxInactiveInterval()+ "<br>");
	     if(session.isNew()) {
	    	 out.print("세 세션이 만들어졌습니다.");
	     }
	}
	

   
}
