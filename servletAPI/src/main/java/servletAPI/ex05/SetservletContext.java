package servletAPI.ex05;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ctxset")
public class SetservletContext extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   response.setContentType("text/html;charset=utf-8");
	   PrintWriter out=response.getWriter();
	   ServletContext context=getServletContext();
	   List member=new ArrayList<>();
	   member.add("홍길동");
	   member.add(50);
	   context.setAttribute("member", member);
	   out.print("<html><body>");
	   out.print("이름과 나이를 설정함");
	   out.print("</body></html>");
	}

}
