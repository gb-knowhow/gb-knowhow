package com.knowhow.answerComment.dao;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.mybatis.config.MyBatisConfig;

public class AnswerCommentDAO {
	   public SqlSession sqlSession;

	   public AnswerCommentDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
}
