package servlet02.ex01;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login2")
public class LoginServlet2 extends HttpServlet {

	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메소드 호출");
	}

	public void destroy() {
		System.out.println("destroy 메소드 호출");
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pwOut=response.getWriter();
		String user_id=request.getParameter("user_id");
		String user_pw=request.getParameter("user_pw");
		String data="<html>";
        data+="<body>";
        data+="<h2>로그인 정보</h2>";
        data+="<p> 아이디: " + user_id + "</p>";
        data+="<p> 패스워드: " + user_pw + "</p>";
        data+="</body>";
        data+="</html>";
        pwOut.print(data);
		
	} 
}
