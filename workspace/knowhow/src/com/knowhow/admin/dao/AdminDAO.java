package com.knowhow.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.admin.domain.MenteeListDTO;
import com.knowhow.mybatis.config.MyBatisConfig;


public class AdminDAO {
	public SqlSession sqlSession;

	public AdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	// 멘티 목록
	public List<MenteeListDTO> menteeList(){
		return sqlSession.selectList("admin.menteeList");
	}
	
//	멘티 목록 삭제
	public void menteeListDelete(Long menteeId) {
		sqlSession.selectOne("admin.menteeListDelete", menteeId);
	}
	
	
//	멘티 총 수
	public Long menteeGetTotal() {
		return sqlSession.selectOne("admin.menteeGetTotal");
	}
	
//	멘티 아이디 번호로 삭제
	public void answerCommentDelete(Long menteeId) {
		sqlSession.selectOne("admin.answerCommentDelete", menteeId);	
	}

//	답글의 댓글 상세보기
//	public String answerCommentDetail(String CommentDetail) {
//		return sqlSession.selectOne("admin.commentDetail",);
//	}
	
}