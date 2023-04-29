package jspjQuery.ex02;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	            System.out.println("오라클 연결 오류");
	            e.printStackTrace();
	        }
	    }

      //ID 중복 체크(DB활용)
	    public boolean overlappedID(String id) {
	    	boolean result=false;
	   //중복체크
	    	try {
	    	   con=dataFactory.getConnection();
	    	   String query="select decode(count(*),1,'true','false') as result from membertbl where id=?";
	    	   pstmt=con.prepareStatement(query);
               pstmt.setString(1,id);
               ResultSet rs=pstmt.executeQuery();
               rs.next();
               result=Boolean.parseBoolean(rs.getString("result"));
               pstmt.close();
	    	   }catch (Exception e) {
	    	     	System.out.println("DB에서 ID 중복 체크 처리 중 에러!!");
	           }
	        	return result;
	      }
	    
}
