package com.knowhow.askAdmin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.askAdmin.domain.AskAdminAnswerDTO;
import com.knowhow.askAdmin.domain.AskAdminDTO;
import com.knowhow.askAdmin.domain.AskAdminVO;
import com.knowhow.mybatis.config.MyBatisConfig;

public class AskAdminDAO {
	
   public SqlSession sqlSession;

   public AskAdminDAO() {
      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
   }
	   
// 게시글 목록
   public List<AskAdminDTO> selectAll(int rowCount, int startRow){
	   Map<String, Integer> pageMap = new HashMap<String, Integer>();
	   
	   pageMap.put("rowCount", rowCount);
	   pageMap.put("startRow", startRow);
	   
	   return sqlSession.selectList("askAdmin.selectAll", pageMap);
   }
   
// 게시글 총 개수
   public Long getTotal() {
	   return sqlSession.selectOne("askAdmin.getTotal");
   }
   
// 게시글 추가
   public void insert(AskAdminVO askAdminVO) {
	   sqlSession.insert("askAdmin.insert", askAdminVO);
   }
   
// 게시글 조회
   public AskAdminDTO select(Long askAdminId) {
	   return sqlSession.selectOne("askAdmin.select", askAdminId);
   }
   
//   문의 답변 조회
   public List<AskAdminAnswerDTO> selectAnswer(Long askAdminId){
	   return sqlSession.selectList("askAdmin.selectAnswer", askAdminId);
   }
   
}
