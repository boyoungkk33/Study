package member;

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
		private Connection conn;
		private PreparedStatement pstmt;
		private DataSource dataFactory;
	
	public MemberDAO() {
	    try {
	    	//JNDI(Java Naming and Directory Interface)에 적븐하기 위해 기본 경로(javaL/comp/env)를 지정
	    	//(자바 애플리케이션을 외부 디렉터리 서비스에 연결
	       Context ctx = new InitialContext();
	       Context envContext = (Context)ctx.lookup("java:/comp/env");
	       dataFactory = (DataSource)envContext.lookup("jdbc/oracle");
	       
	    } catch (Exception e) {
	       System.out.println("오라클 연결 오류");
	       e.printStackTrace();
	    }
    }
//  회원 조회
	public List<MemberVO> listMembers(){
		List<MemberVO> memberList = new ArrayList();
		try {
	        conn = dataFactory.getConnection();
	        String query = "select * from memtbl order by name desc";
	        pstmt = conn.prepareStatement(query);
	        ResultSet rs = pstmt.executeQuery();
	        while(rs.next()) {
	        	String email = rs.getString("email");
	        	String pwd = rs.getString("pwd");
	        	int postcode = rs.getInt("postcode");
	        	String address = rs.getString("address");
	        	String detailaddress =rs.getString("detailaddress");
	        	int phone = rs.getInt("phone");
	        	String name = rs.getString("name");
	        	MemberVO memberVO = new MemberVO(email, pwd, postcode, address, detailaddress, phone, name);
	        	memberList.add(memberVO);
	        }
	        rs.close();
	        pstmt.close();
	        conn.close();
	     	} catch (Exception e) {
	        System.out.println("DB 조회 중 에러!");
	        e.printStackTrace();
	     	}
	     	return memberList;
	}
//  회원 등록
	  public void addMember(MemberVO memberVO) {
	     try {
	        conn = dataFactory.getConnection();
	        String email = memberVO.getEmail();
	        String pwd = memberVO.getPwd();
	        int postcode= memberVO.getPostcode();
	        String address = memberVO.getAddress();
	        String detailAddress = memberVO.getDetailaddress();
	        int phone= memberVO.getPhone();
	        String name = memberVO.getName();
	        String query = "insert into memtbl (email, pwd, postcode, address, detailAddress, phone, name) values(?,?,?,?,?,?,?)";
	        pstmt = conn.prepareStatement(query);
	        pstmt.setString(1, email);
	        pstmt.setString(2, pwd);
	        pstmt.setInt(3, postcode);
	        pstmt.setString(4, address);
	        pstmt.setString(5, detailAddress);
	        pstmt.setInt(6, phone);
	        pstmt.setString(7, name);
	        pstmt.executeUpdate();
	        pstmt.close();
	        conn.close();
	     } catch (Exception e) {
	        System.out.println("DB 등록 중 에러!!");
	        e.printStackTrace();
	     }
	  }
	//  수정할 회원정보 찾기
	  public MemberVO findMember(String _email) {
	     MemberVO memFindInfo = null;
	     try {
	        conn = dataFactory.getConnection();
	        String query = "select * from memtbl where id=?";
	        pstmt = conn.prepareStatement(query);
	        pstmt.setString(1, _email);
	        ResultSet rs = pstmt.executeQuery();
	        rs.next();
	        String email = rs.getString("email");
        	String pwd = rs.getString("pwd");
        	int postcode = rs.getInt("postcode");
        	String address = rs.getString("address");
        	String detailaddress =rs.getString("detailaddress");
        	int phone = rs.getInt("phone");
        	String name = rs.getString("name");
	        memFindInfo = new MemberVO(email, pwd, postcode, address, detailaddress, phone, name);
	        pstmt.close();
	        conn.close();
	        rs.close();
	     } catch (Exception e) {
	        System.out.println("수정할 자료 찾는 중 에러!!");
	        e.printStackTrace();
	     }
	     return memFindInfo;
	  }
	//  회원정보 수정
	  public void modMember(MemberVO memberVO) {
		  String email = memberVO.getEmail();
	        String pwd = memberVO.getPwd();
	        int postcode= memberVO.getPostcode();
	        String address = memberVO.getAddress();
	        String detailAddress = memberVO.getDetailaddress();
	        int phone= memberVO.getPhone();
	        String name = memberVO.getName();
		   	try {
		   			conn=dataFactory.getConnection();
		   			String query="update memtbl set pwd=?,postcode=?,address=?,detailAddress=?,phon=? where email=?";
		   			pstmt=conn.prepareStatement(query);
			        pstmt.setString(1, pwd);
			        pstmt.setInt(2, postcode);
			        pstmt.setString(3, address);
			        pstmt.setString(4, detailAddress);
			        pstmt.setInt(5, phone);
			        pstmt.setString(6, name);
			        pstmt.setString(7, email);
		   			pstmt.execute();
		   			pstmt.close();
		   			conn.close();
			} catch (Exception e) {
				System.out.println("회원정보 수정중 에러 발생");
				e.printStackTrace();
			}
	  }
	  //회원정보 삭제
	  public void delMember(String email) {
		   try {
			   conn=dataFactory.getConnection();
			   String query = "delete from memtbl where email=?";
			   pstmt=conn.prepareStatement(query);
			   pstmt.setString(1, email);
			   pstmt.execute();
			   pstmt.close();
			   conn.close();
		} catch (Exception e) {
			System.out.println("회원 정보중 삭제 에러");
			e.printStackTrace();
		}
	  }
}