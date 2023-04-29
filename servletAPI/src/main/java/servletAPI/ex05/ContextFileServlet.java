package servletAPI.ex05;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ctxfile")
public class ContextFileServlet extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html;charset=utf-8");
      PrintWriter out =response.getWriter();
      ServletContext context=getServletContext();
      InputStream inputs= context.getResourceAsStream("/WEB-INF/bin/init.txt");
      BufferedReader bReader =new BufferedReader(new InputStreamReader(inputs));
      String menu=null, menu_member=null,menu_order=null, menu_goods=null;
      while((menu=bReader.readLine()) !=null) {
    	  StringTokenizer tokenizer=new StringTokenizer(menu, ",");
    	  menu_member=tokenizer.nextToken();
    	  menu_order=tokenizer.nextToken();
    	  menu_goods=tokenizer.nextToken();
      }
      out.print("<html><body>");
      out.print("<table border=1>");
      out.print("<tr><th>메뉴이름</th></tr>");
      out.print("<tr><td>" + menu_member+  "</td></tr>"); 
      out.print("<tr><td>" + menu_order+  "</td></tr>"); 
      out.print("<tr><td>" + menu_goods+  "</td></tr>"); 
      out.print("</talbe>");
      out.print("</body></html>");
}

}
