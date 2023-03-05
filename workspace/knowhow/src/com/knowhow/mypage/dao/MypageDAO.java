package com.knowhow.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.member.domain.MemberVO;
import com.knowhow.mybatis.config.MyBatisConfig;
import com.knowhow.mypage.domain.CountBoardsDTO;
import com.knowhow.mypage.domain.CountCommentDTO;
import com.knowhow.mypage.domain.CountLikeDTO;
import com.knowhow.mypage.domain.CountLikedDTO;
import com.knowhow.question.domain.QuestionVO;

public class MypageDAO {
	public SqlSession sqlSession;

	public MypageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	회원 정보
	public MemberVO selectMyInfo(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectOne("mypage.selectMyInfo", memberId);
	}
	
//	내가 쓴 모든 질문 및 답글 수 
	public CountBoardsDTO countMyBoards(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectOne("mypage.countMyBoards", memberId);
	}
	
//	내가 받은 좋아요 수 
	public CountLikedDTO countLikedIGot(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectOne("mypage.countLikedIGot", memberId);
	}

//	내가 쓴 댓글 수 
	public CountCommentDTO countMyComments(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectOne("mypage.countMyComments", memberId);
	}
	
//	내가 좋아요 한 글 수
	public CountLikeDTO countBoardsILiked(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectOne("mypage.countBoardsILiked", memberId);
	}
	
//	내가 쓴 질문
	public List<QuestionVO> selectMyQuestion(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectList("mypage.selectMyQuestion", memberId);
	}
	
	
	
	
	
}
