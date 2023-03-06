package com.knowhow.answer.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.answer.domain.AnswerDTO;
import com.knowhow.answer.domain.AnswerVO;
import com.knowhow.mybatis.config.MyBatisConfig;

public class AnswerDAO {
	   public SqlSession sqlSession;

	   public AnswerDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
	   
//	   답글 디테일
	   public List<AnswerDTO> selectOne(Long questionId) {
		   return sqlSession.selectList("answer.selectOne",questionId);
	   }
//	   답글 달기
	   public void insert(AnswerVO answerVO) {
		   sqlSession.insert("answer.insert",answerVO);
	   }
//	   답글 삭제
	   public void delete(Long answerId) {
		   sqlSession.delete("answer.delete",answerId);
	   }
	   
}
