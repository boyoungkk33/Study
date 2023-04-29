package jspjQuery.ex03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


@WebServlet("/json2")
public class JsonServlet02 extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        JSONObject memberInfo=new JSONObject();
        JSONArray  memberArray=new JSONArray();
        JSONObject totalObject=new JSONObject();
        memberInfo.put("name","박지성");
        memberInfo.put("age", 42);
        memberInfo.put("gender","남성");
        memberInfo.put("nickname","날센돌이");	
        memberArray.add(memberInfo);//json 객체를 배열에 입력
        memberInfo=new JSONObject();
        memberInfo.put("name","손흥민");
        memberInfo.put("age", 31);
        memberInfo.put("gender","남성");
        memberInfo.put("nickname","손세이셔널");
        memberArray.add(memberInfo);
        totalObject.put("members", memberArray);        
	    String jsonInfo=totalObject.toJSONString();
	    out.print(jsonInfo);
	  }
	}

