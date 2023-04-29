package servletlink.ex02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/sports")
public class SportsServlet extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		     request.setCharacterEncoding("utf-8");
		     response.setContentType("text/html;charset=utf-8");
		     PrintWriter out= response.getWriter();
		     String user_id=request.getParameter("user_id"); 
             out.print("<html><body>");
             if(user_id !=null && user_id.length() !=0) {
            	 out.print("<p>" + user_id + "님이 로그인한 상태</p>");
            	 out.print("<p>스포츠 중계 댓글을 넣을 수 있습니다.</p>");
            	 out.print("댓글<input type='text'>");
            	 
             }else {
            	 out.print("댓글<input type='text' disabled>");
            	 out.print("<p> 로그인 하지 않았습니다.</p>");
            	 out.print("<p> 로그인 해주세요.</p>");
            	 out.print("<a href='/servletlink/login.html'>로그인창으로 이동하기</a>");
            	 
             }
             out.print("</body></html>");
	}
	
}
