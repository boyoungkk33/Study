package servlet02.ex02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login5")
public class LoginServlet5 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메서드 호출");
		}


	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 메서드 호출");
		doHandle(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 메서드 호출");
		doHandle(request, response);
	}
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  System.out.println("doHandle 메서드 호출");
		  request.setCharacterEncoding("utf-8");
		  response.setContentType("text/html;charset=utf-8");
          PrintWriter pwOut=response.getWriter();
		  String user_id=request.getParameter("user_id");
		  String user_pw=request.getParameter("user_pw");
		  String address=request.getParameter("user_address");
		  String data="<html><body>";
		  data+="<p>아이디 : " +user_id +"</p>";
		  data+="<p>비밀번호 :" +user_pw +"</p>";
		  data+="<p>주소 :" + address +"</p>";
		  data+="</body></html>";
		  pwOut.print(data);
	}

}
