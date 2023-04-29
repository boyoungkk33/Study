package com.spring.ex03;

public class MemberServiceImpl implements MemberService{
     private MemberDAO memDAO; //주입된 빈을 저장할 MemberDAO 타입의 속성을 선언 

     //설정 파일에서 memberDAO빈을 생성한후 SETTER를 속성 memDAO에 주입
     public void setMemDAO(MemberDAO memDAO) { 
     	this.memDAO = memDAO;
     }
     
    @Override
 	public void listMembers() {
 		memDAO.listMembers(); //주입된 빈을 이용해 listMembers()메서드를 호출 
    
 		
     }
    }
	