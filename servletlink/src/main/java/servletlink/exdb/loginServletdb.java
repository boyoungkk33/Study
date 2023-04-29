package servletlink.exdb;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logindb")
public class loginServletdb extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request,response);
	}
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out =response.getWriter();
        String user_id= request.getParameter("user_id");
        String user_pwd= request.getParameter("user_pwd");
        MemberVO memVo=new MemberVO();
        memVo.setId(user_id);
        memVo.setPwd(user_pwd);
        MemberDAO dao= new MemberDAO();
		boolean result=dao.isExisted(memVo);
		out.print("<html><body>");
		if(result) {
			//회원정보 확인 => 세션 생성=> 로그인정보 세션 세팅 
		    HttpSession session=request.getSession();
		    session.setAttribute("isLogon", true);
		    session.setAttribute("log_id", user_id);
		    out.print("안녕하세요" + user_id + "님 방문을 환영합니다.");
		    out.print("<a href='show'>회원정보보기</a>");
		}else {
			//회원정보 X => 다시 로그인하기
			out.print("<p>회원정보가 틀립니다.</p>");
			out.print("<a href='logindb.html'>다시 로그인하기</a>");
			
		}
		out.print("</body></html>");
	}

}


