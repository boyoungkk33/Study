package Dispatch.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/second4")
public class SecondDispatch2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  request.setCharacterEncoding("utf-8");
	  response.setContentType("text/html;charset=utf-8");
	  String name=(String)request.getAttribute("name");
	  String address=(String)request.getAttribute("address");
	  PrintWriter out=response.getWriter();
	  out.println("<html><body>");
	  out.println("<p>" +  name + "님 환영합니다.<p>");
	  out.println("<p>주소: " + address+ "<p>");
	  out.println("<p>dispatch를 이욯한 forward 실습입니다.</p>");
	  out.println("</body></html>");
	  
	}

}
