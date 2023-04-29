package servletAPI.ex01;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/second")
public class SecondRedirect extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	         String name=request.getParameter("name");
	         response.setContentType("text/html;charset=utf-8");
	         PrintWriter out =response.getWriter();
	         out.print("<html><body>");
	         out.print(name + "님 환영합니다.");
	         out.print("</body></html>");
	}

	
	
}
