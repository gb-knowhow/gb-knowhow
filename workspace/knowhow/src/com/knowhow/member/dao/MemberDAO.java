package com.knowhow.member.dao;

import java.util.HashMap;
import java.util.Map;

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
	   
//		로그인
		public Long login(String memberIdentification, String memberPassword) {
			Map<String, String> loginMap = new HashMap<String, String>();
			loginMap.put("memberIdentification", memberIdentification);
			loginMap.put("memberPassword", memberPassword);
			return sqlSession.selectOne("member.login", loginMap);
		}
		

}
