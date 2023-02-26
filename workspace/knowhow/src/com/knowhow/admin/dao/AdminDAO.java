package com.knowhow.admin.dao;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.mybatis.config.MyBatisConfig;


public class AdminDAO {
	   public SqlSession sqlSession;

	   public AdminDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
	   
	   
	   
}
