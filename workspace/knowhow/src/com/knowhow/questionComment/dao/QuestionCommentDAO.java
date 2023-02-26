package com.knowhow.questionComment.dao;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.mybatis.config.MyBatisConfig;

public class QuestionCommentDAO {
	   public SqlSession sqlSession;

	   public QuestionCommentDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
}
