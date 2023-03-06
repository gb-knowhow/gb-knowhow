package com.knowhow.resume.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.mybatis.config.MyBatisConfig;
import com.knowhow.resume.domain.ResumeListDTO;

public class ResumeDAO {
	
	public SqlSession sqlSession;
	   
	   public ResumeDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
	
	// 이력서 목록
		public List<ResumeListDTO> resumeList(Map<String, Object> resumeListMap){
			return sqlSession.selectList("resume.resumeList", resumeListMap);
		}
		
//		이력서 총 수
		public Long resumeListGetTotal() {
			return sqlSession.selectOne("resume.resumeListGetTotal");
		}
		
//		이력서 목록 삭제
		public void resumeListDelete(Long resumeId) {
			sqlSession.selectOne("resume.resumeListDelete", resumeId);
		}
}
