package com.knowhow.member.dao;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.member.domain.MemberVO;
import com.knowhow.member.domain.ResumeVO;
import com.knowhow.mybatis.config.MyBatisConfig;

public class MemberDAO {
	   public SqlSession sqlSession;

	   public MemberDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
//	   아이디중복이 있으면 false, 없으면 true
		public boolean checkId(String memberIdentification) {
			return sqlSession.selectOne("member.checkId", memberIdentification) != null;
		}
	   
	   
//		회원가입
	   public void join(MemberVO memberVO) {
			sqlSession.insert("member.join", memberVO);
		}
//	   맴버의 아이디 가져오기
	   public Long getMemberId(String memberIdentification) {
		   return (long) sqlSession.selectOne("member.getMemberId", memberIdentification);
	   }
//	   이력서 넣기
	   public void insertResume(ResumeVO resumeVO) {
		   sqlSession.insert("member.insertResume", resumeVO);
	   }
	   
//	   닉네임 중복검사
	   public boolean checkNickname(String nickname) {
		   return sqlSession.selectOne("member.checkNickname", nickname) != null;
	   }
	   
//	   이메일 중복검사
	   public boolean checkEmail(String memberEmail) {
		   return sqlSession.selectOne("member.checkEmail", memberEmail) != null;
	   }
	   
//		로그인
		public Long login(String memberIdentification, String memberPassword) {
			Map<String, String> loginMap = new HashMap<String, String>();
			loginMap.put("memberIdentification", memberIdentification);
			loginMap.put("memberPassword", memberPassword);
			return sqlSession.selectOne("member.login", loginMap);
		}
		
//		프로필 path가져오기
		public String getProfileSystemName(Long memberId) {
			 return sqlSession.selectOne("member.getFileSystemName", memberId);
		}
		
//		resume existence가져오기
		public Boolean getResumeExistence(Long memberId) {
			return sqlSession.selectOne("member.getResumeExistence", memberId);
		}
		
//		아이디 찾기 
		public String findMyId(String memberNickname, String memberEmail, String memberName) {
			Map<String, String> findIdMap = new HashMap<String, String>();
			findIdMap.put("memberNickname", memberNickname);
			findIdMap.put("memberEmail", memberEmail);
			findIdMap.put("memberName", memberName);
			return sqlSession.selectOne("member.findMyId", findIdMap);
		}
		
//		비밀번호 찾기 
		public Long findMyPassword(String memberIdentification, String memberEmail) {
			Map<String, String> findPasswordMap = new HashMap<String, String>();
			findPasswordMap.put("memberIdentification", memberIdentification);
			findPasswordMap.put("memberEmail", memberEmail);
			return sqlSession.selectOne("member.findMyPassword", findPasswordMap);
		}
		
//		새로운 비밀번호 db에 업데이트
		public void changePassword(String memberIdentification, String newMemberPassword) {
			Map<String, String> updateMap = new HashMap<String, String>();
			updateMap.put("memberIdentification", memberIdentification);
			updateMap.put("newMemberPassword", newMemberPassword);
			sqlSession.update("member.updatePassword", updateMap);
		}
		
		
//		임시 비밀번호 생성 메소드
	    public String passwordGenerate() {
	    	int pwdLength = 8;
		    final char[] passwordTable =  { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 
		                                            'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
		                                            'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
		                                            'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 
		                                            'w', 'x', 'y', 'z', '!', '@', '#', '$', '%', '^', '&', '*',
		                                            '(', ')', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
	    	
	        Random random = new Random(System.currentTimeMillis());
	        int tablelength = passwordTable.length;
	        StringBuffer buf = new StringBuffer();
	        
	        for(int i = 0; i < pwdLength; i++) {
	            buf.append(passwordTable[random.nextInt(tablelength)]);
	        }
	        
	        return buf.toString();
	    }

}
