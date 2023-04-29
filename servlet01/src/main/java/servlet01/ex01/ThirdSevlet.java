package servlet01.ex01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/th")
public class ThirdSevlet extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		  System.out.println("init메서드 호출(<<<<third");
	}


	public void destroy() {
		  System.out.println("destory메서드 호출(<<<<third");
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  System.out.println("doget메서드 호출(<<<<third");
	}

}
