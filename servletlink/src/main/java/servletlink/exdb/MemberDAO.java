package servletlink.exdb;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
    private Connection con;
    private PreparedStatement pstmt;
    private DataSource dataFactory;

    public MemberDAO() {
        try {
            Context ctx = new InitialContext();
            Context envContext = (Context) ctx.lookup("java:/comp/env");
            dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
        } catch (Exception e) {
            System.out.println("커넥션풀 연결 실패: " + e.getMessage());
            e.printStackTrace();
        }
    }

    //회원 목록 확인 메서드
    public List<MemberVO> listMembers() {
        List<MemberVO> list = new ArrayList<MemberVO>();
        try {
            con = dataFactory.getConnection();
            String query = "select * from membertbl";
            pstmt = con.prepareStatement(query);
            ResultSet rs = pstmt.executeQuery(); // PreparedStatement 객체 사용
            while (rs.next()) {
                String id = rs.getString("id");
                String pwd = rs.getString("pwd");
                String name = rs.getString("name");
                String email = rs.getString("email");
                Date joinDate = rs.getDate("joindate");
                MemberVO vo = new MemberVO();
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
        } catch (SQLException e) {
            System.out.println("자료오류: " + e.getMessage());
            e.printStackTrace();
        }
        return list;
    }
    
    //회원등록 메서드 
    public void addMember(MemberVO memVo) {
    	try {
    		con=dataFactory.getConnection(); //Datasource 를 이욯해서 데이터베이스와 연결
    		String id=memVo.getId();
    		String pwd=memVo.getPwd();
    		String name=memVo.getName();
    		String email=memVo.getEmail();
    	    String query="insert into membertbl(id,pwd,name,email) values(?,?,?,?)";
    	    pstmt=con.prepareStatement(query);
    	    pstmt.setString(1, id); //?에 첫번째 id값 
    	    pstmt.setString(2, pwd);
    	    pstmt.setString(3, name);
    	    pstmt.setString(4, email);
    	    pstmt.executeUpdate();//회원정보 테이블에 추가기능을 실행
    	    pstmt.close();
    	    
    	}catch(Exception e) {
    		System.out.println("등록중 오류 발생");
    		e.printStackTrace();
    	}
    	
    	
    }
    
    //회원삭제 메서드
    public void delMember(String id) {
    	try {
         con=dataFactory.getConnection();
         String query= "delete from membertbl where id=?";
         pstmt=con.prepareStatement(query); 
         pstmt.setString(1, id);
         pstmt.executeUpdate(); //삭제 명령 실행 
         pstmt.close();
    	}catch (Exception e){
    		System.out.println("삭제 중 오류발생");
    		e.printStackTrace();
    	}
    }
  //회원가입확인
    public Boolean isExisted(MemberVO memVo) {
        boolean result=false;
        String id=memVo.getId(); //로그인 시도하는 아이디 비밀번호 
        String pwd=memVo.getPwd();
        try {
            con=dataFactory.getConnection();
            String query="select decode(count(*),1,'true','false') as result";  // 변수값 1일때 실행
            query+=" from membertbl where id=? and pwd=?";  
            pstmt=con.prepareStatement(query);
            pstmt.setString(1, id);
            pstmt.setString(2, pwd);
            ResultSet rs=pstmt.executeQuery();
            rs.next();
            result=Boolean.parseBoolean(rs.getString("result"));
        }catch (Exception e) {
            System.out.println("DB의 연결 오류");
            e.printStackTrace();
        }
        return result;
    }

    
    
}