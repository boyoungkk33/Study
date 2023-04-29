package jspjQuery.ex03;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


@WebServlet("/json")
public class JsonServlet extends HttpServlet {
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String info=request.getParameter("jsonInfo");
        try {
        	JSONParser jparser=new JSONParser();
            JSONObject jobject=(JSONObject)jparser.parse(info);
            System.out.println("** 회원 정보**");
            System.out.println("이름: " + jobject.get("name"));
            System.out.println("나이: " + jobject.get("age"));
            System.out.println("성별: " + jobject.get("gender"));
            System.out.println("별명: " + jobject.get("nickname"));
        }catch (Exception e) {
        	System.out.println("json 데이터 받는중 에러!");
        	e.printStackTrace();
        }
	  }

}
