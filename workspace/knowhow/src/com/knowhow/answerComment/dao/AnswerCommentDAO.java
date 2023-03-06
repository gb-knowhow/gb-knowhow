package com.knowhow.answerComment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.answerComment.domain.AnswerCommentVO;
import com.knowhow.mybatis.config.MyBatisConfig;
import com.knowhow.questionComment.domain.QuestionCommentVO;

public class AnswerCommentDAO {
	   public SqlSession sqlSession;

	   public AnswerCommentDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
	   
	   
//	   답글의 댓글
	   public List<AnswerCommentVO> selectAll(Long questionId){
		   return sqlSession.selectList("answerComment.selectAllcomment",questionId);
	   }
}
