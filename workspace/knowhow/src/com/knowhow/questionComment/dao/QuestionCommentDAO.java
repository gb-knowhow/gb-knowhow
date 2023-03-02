package com.knowhow.questionComment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.mybatis.config.MyBatisConfig;
import com.knowhow.questionComment.domain.QuestionCommentVO;

public class QuestionCommentDAO {
	   public SqlSession sqlSession;

	   public QuestionCommentDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
	   
//	   질문 
	   public List<QuestionCommentVO> selectAll(Long questionId){
		   return sqlSession.selectList("questionComment.selectAll",questionId);
	   }
	   
	   
	   
	   
}
