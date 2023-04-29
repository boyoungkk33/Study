package servletdb.ex01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

public class MemberDAO {
  private static final String driver="oracle.jdbc.driver.OracleDriver"; //oracle driver 연결
  private static final String url="jdbc:oracle:thin:@localhost:1521:XE";//oracle 포트 연결 
  private static final String user="userjsp";//oracle 계정 
  private static final String pwd="1234"; //oracle 비밀번호	
  private Connection con; //db연결
  private Statement stmt;
  
  //메서드 
  public List<MemberVO> listMembers() {
    List<MemberVO> list=new ArrayList<MemberVO>();
    try {
      connDB();
      String query="select id, pwd, name, email, joindate from membertbl";
      ResultSet rs=stmt.executeQuery(query);
      while(rs.next()) { //header 부분에서 이동
        String id=rs.getString("id"); 
        String pwd=rs.getString("pwd");
        String name=rs.getString("name");
        String email=rs.getString("email");
        Date joinDate=rs.getDate("joindate");
        MemberVO vo=new MemberVO();
        vo.setId(id);
        vo.setPwd(pwd);
        vo.setName(name);
        vo.setEmail(email);
        vo.setJoinDate(joinDate);
        list.add(vo);
      }
      rs.close();
      stmt.close();
      con.close();
    } catch(Exception e) {
      System.out.println("자료오류=>" + e.getMessage());
    }
    return list;
  } 
  
  //DB연결
  private void connDB() {
    try {
      Class.forName(driver);
      System.out.println("oracle 드라이버 로딩 성공");
      con=DriverManager.getConnection(url,user,pwd);
      System.out.println("Connection 생성 성공");
      stmt=con.createStatement();
      System.out.println("Statement생성 성공");
    } catch(Exception e) {
      System.out.println("연결 오류=>" + e.getMessage());
    }
  }
}