package jspAction.ex01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class MemberDAO { 
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	
	public MemberDAO() {
	 try {
		  Context ctx=new InitialContext();
		  Context envContext=(Context)ctx.lookup("java:/comp/env");
		  dataFactory=(DataSource)envContext.lookup("jdbc/oracle");
	 }catch( Exception e) {
		 System.out.println("오라클 연결 안됨");
	 }
	}
	
	//회원 목록 확인
	public List listMembers() {
		List list=new ArrayList();
		try {
			con=dataFactory.getConnection();
			String query="select * from membertbl order by joinDate desc";
	        System.out.println("명령문 수행 결과: " + query);
	        pstmt=con.prepareStatement(query);
	        ResultSet rs=pstmt.executeQuery();
	        while(rs.next()) {
	        	String id=rs.getString("id");
	        	String pwd=rs.getString("pwd");
	        	String name=rs.getString("name");
	        	String email=rs.getString("email");
	        	Date joinDate=rs.getDate("joinDate");
	        	MemberBean vo=new MemberBean();
	        	vo.setId(id);
	        	vo.setPwd(pwd);
	        	vo.setName(name);
	        	vo.setEmail(email);
	        	vo.setJoinDate(joinDate);
                list.add(vo);
	        }
	        rs.close();
	        pstmt.close();
	        con.close();
	        
		}catch(Exception e) {
			System.out.println("조회 중 오라클이 끊어졌습니다.");
			e.printStackTrace();
		}
		return list;
	}
	//회원등록 
	public void addMember(MemberBean vo) {
		try {
		  con=dataFactory.getConnection();	
		  String id=vo.getId();
		  String pwd=vo.getPwd();
		  String name=vo.getName();
		  String email=vo.getEmail();
		  String query="insert into membertbl(id,pwd,name,email) values(?,?,?,?)"; //자료만큼만 값 지정 
	      pstmt=con.prepareStatement(query);
	      pstmt.setString(1, id);
	      pstmt.setString(2, pwd);
	      pstmt.setString(3, name);
	      pstmt.setString(4, email);
	      pstmt.executeUpdate(); //insert-excuteUpdate , 등록실행
	      pstmt.close();
		}catch (Exception e) {
			System.out.println("회원 등록 중 오류 발생");
			e.printStackTrace();
		}
	}
	
	//회원 삭제
	public void delMember(String id) {
		try {
			con=dataFactory.getConnection();
			String query="delete from membertbl where id=?";
			pstmt= con.prepareStatement(query);
			pstmt.setString(1,id);
			pstmt.executeUpdate();
			pstmt.close();
		}catch (Exception e) {
			System.out.println("삭제 처리중 오류 발생");
			e.printStackTrace();
		}
	}
	}

