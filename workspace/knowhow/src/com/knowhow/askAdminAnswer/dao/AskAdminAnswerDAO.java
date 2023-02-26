package com.knowhow.askAdminAnswer.dao;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.mybatis.config.MyBatisConfig;

public class AskAdminAnswerDAO {
	   public SqlSession sqlSession;

	   public AskAdminAnswerDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
}
