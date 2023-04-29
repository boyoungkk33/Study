package Dispatch.ex01;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/first4")
public class FirstDispatch2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     response.setCharacterEncoding("utf-8");
	     response.setContentType("text/html;charset=utf-8");
	     request.setAttribute("name","chulsu");
	     request.setAttribute("address","서울시 종로구");
	     RequestDispatcher dispatcher=request.getRequestDispatcher("second4?name=chulsu");
	     dispatcher.forward(request, response);
	}
}
