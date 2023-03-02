package com.knowhow.mypage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.member.domain.MemberVO;
import com.knowhow.mybatis.config.MyBatisConfig;

public class MypageDAO {
	public SqlSession sqlSession;

	public MypageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public MemberVO selectMyInfo(long memberId) {
		System.out.println("DAO");
		return sqlSession.selectOne("mypage.selectMyInfo", memberId);
	}

}
