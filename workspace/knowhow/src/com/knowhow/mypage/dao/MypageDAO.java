package com.knowhow.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.answer.domain.AnswerVO;
import com.knowhow.answerComment.domain.AnswerCommentVO;
import com.knowhow.member.domain.MemberVO;
import com.knowhow.mybatis.config.MyBatisConfig;
import com.knowhow.mypage.domain.CountBoardsDTO;
import com.knowhow.mypage.domain.CountCommentDTO;
import com.knowhow.mypage.domain.CountLikeDTO;
import com.knowhow.mypage.domain.CountLikedDTO;
import com.knowhow.mypage.domain.MyAnswerDTO;
import com.knowhow.mypage.domain.MyQuestionDTO;
import com.knowhow.question.domain.QuestionVO;
import com.knowhow.questionComment.domain.QuestionCommentVO;

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
	public List<MyQuestionDTO> selectMyQuestions(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectList("mypage.selectMyQuestions", memberId);
	}
	
//	내가 쓴 답변
	public List<MyAnswerDTO> selectMyAnswers(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectList("mypage.selectMyAnswers", memberId);
	}
	
// 질문의 카테고리
	public String getCategory(Long categoryId) {
		System.out.println("DAO");
		return sqlSession.selectOne("mypage.getCategory", categoryId);
	}
	
// 내정보 수정
	public String updateMyInfo(MemberVO memberVO) {
		System.out.println("DAO");
		return sqlSession.selectOne("mypage.updateMyInfo", memberVO);
	}
	
// 내가 좋아요 한 질문
	public List<MyQuestionDTO> selectMylikeQuestion(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectList("mypage.selectMylikeQuestion", memberId);
	}
	
// 내가 좋아요 한 답변
	public List<MyAnswerDTO> selectMylikeAnswer(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectList("mypage.selectMylikeAnswer", memberId);
	}
	
//	내가 쓴 댓글 in 질문
	public List<QuestionCommentVO> myCommentsInQuestion(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectList("mypage.myCommentsInQuestion", memberId);
	}
	
//	내가 쓴 댓글 in 답변
	public List<AnswerCommentVO> myCommentsInAnswer(Long memberId) {
		System.out.println("DAO");
		return sqlSession.selectList("mypage.myCommentsInAnswer", memberId);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
