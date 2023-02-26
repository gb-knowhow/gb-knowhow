package com.knowhow.askAdmin.dao;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.mybatis.config.MyBatisConfig;

public class AskAdminDAO {
	
	   public SqlSession sqlSession;

	   public AskAdminDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
}
