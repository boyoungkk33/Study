package servlet03.ex03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginTest")
public class LoginTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메서드 호출");
	}

	
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 메서드 호출");
		doHandle(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 메서드 호출");
		doHandle(request,response);
	}
	
    protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("doHandle 메서드 호출");
    	request.setCharacterEncoding("utf-8");
    	response.setContentType("text/html;charset=utf-8");
    	PrintWriter out=response.getWriter();
    	String id=request.getParameter("user_id");
    	String pw=request.getParameter("user_pw");
	    if(id !=null && id.length() !=0) {
	    	if(id.equals("admin")) {
	    	out.print("<html><body>");
	    	out.print("관리자로 로그인 하셨습니다.</p>");
	    	out.print("<input type='button' value='상품정보 수정하기'>");
	    	out.print("<input type='button' value='상품정보 삭제하기'>");
	    	out.print("</body></html>");
        
	    }else{
    		out.print("<html><body>");
	    	out.print("<p>" + id +"님이 로그인 하셨습니다.</p>");
	    	out.print("</body></html>");
	    }
	    
	    	
	    }else{
        	out.print("<html><body>");
    	    out.print("<p>아이디를 입력해주세요.</p>");
    	    out.print("<a href='http://localhost:8090/servlet02/test/login.html'>로그인 창으로 이동</a>");
    	    out.print("</body></html>");
         }
    }

}