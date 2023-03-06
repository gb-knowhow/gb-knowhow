package com.knowhow.question.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.mybatis.config.MyBatisConfig;
import com.knowhow.question.domain.QuestionDTO;
import com.knowhow.question.domain.QuestionVO;

public class QuestionDAO {
	   public SqlSession sqlSession;

	   public QuestionDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
	   
	   
//	   게시글 전체 목록
	   public List<QuestionDTO> selectAll(Map<String, Object> pageMap){
		   return sqlSession.selectList("question.selectAll", pageMap);
	   }
	   
//	   게시글 전체 갯수
	   public Long getTotal() {
			return sqlSession.selectOne("question.getTotal");
		}
	   
//	   게시글 디테일
	   public QuestionDTO selectOne(Long questionId) {
		   return sqlSession.selectOne("question.selectOne",questionId);
	   }
	   
//	   질문 수정
	   public void update(QuestionVO questionVO) {
		   sqlSession.update("question.update",questionVO);
	   }
	   
//	   질문 작성
	   public void insert(QuestionVO questionVO) {
		   sqlSession.insert("question.insert",questionVO);
	   }
	   
//	   질문 삭제
	   public void delete(Long answerId) {
		   sqlSession.delete("question.delete",answerId);
	   }
	   
	   
}
