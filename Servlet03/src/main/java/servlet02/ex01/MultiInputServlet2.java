package servlet02.ex01;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/input2")
public class MultiInputServlet2 extends HttpServlet {

	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메소드 호출");
	}

	
	public void destroy() {
		System.out.println("destroy 메소드 호출");
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Enumeration enu=request.getParameterNames();
		while (enu.hasMoreElements()) {
			String name=(String)enu.nextElement();
			String [] values=request.getParameterValues(name);
			for(String val : values) {
				System.out.println("매개변수이름 : " + name + " , " +"값 : " + val);
			}
			
		}
		
	}

}
