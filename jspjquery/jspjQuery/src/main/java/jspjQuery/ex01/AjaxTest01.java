package jspjQuery.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ajax1")
public class AjaxTest01 extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doHandle(request,response);
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doHandle(request,response);
}

private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("utf-8");
response.setContentType("text/html;charset=utf-8");
String rmsg=(String)request.getParameter("jq");
System.out.println("받은내용: " +rmsg);
PrintWriter out=response.getWriter();
out.print("<p>안녕하세요 서버입니다.</p>");
out.print("<p>ajax공부 열심히 하세요.</p>");
		
}
}