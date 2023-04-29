package servletdb.ex03;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
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
        } catch (NamingException e) {
            System.out.println("커넥션풀 연결 실패: " + e.getMessage());
        }
    }

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
        }
        return list;
    }
}