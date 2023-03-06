package com.knowhow.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.knowhow.admin.domain.AnswerCommentListDTO;
import com.knowhow.admin.domain.DashBoardAskAdminDTO;
import com.knowhow.admin.domain.DashBoardMenteeQuestionDTO;
import com.knowhow.admin.domain.DashBoardMentorReplyDTO;
import com.knowhow.admin.domain.MemberListDTO;
import com.knowhow.admin.domain.MenteeQuestionListDTO;
import com.knowhow.admin.domain.MentorReplyListDTO;
import com.knowhow.admin.domain.QuestionCommentListDTO;
import com.knowhow.mybatis.config.MyBatisConfig;


public class AdminDAO {
	public SqlSession sqlSession;

	public AdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	// 멘티 목록
	public List<MemberListDTO> menteeList(Map<String, Object> pageMap){
		return sqlSession.selectList("admin.menteeList", pageMap);
	}
	
//	멘티 목록 삭제
	public void menteeListDelete(Long menteeId) {
		sqlSession.selectOne("admin.menteeListDelete", menteeId);
	}
	
//	멘티 총 수
	public Long menteeGetTotal() {
		return sqlSession.selectOne("admin.menteeGetTotal");
	}
	
	// 멘토 목록
	public List<MemberListDTO> mentorList(Map<String, Object> pageMap){
		return sqlSession.selectList("admin.mentorList", pageMap);
	}
	
//	멘토 목록 삭제
	public void mentorListDelete(Long mentorId) {
		sqlSession.selectOne("admin.mentorListDelete", mentorId);
	}
	
//	멘토 총 수
	public Long mentorGetTotal() {
		return sqlSession.selectOne("admin.mentorGetTotal");
	}
	
//	대쉬보드 신규회원
	public List<MemberListDTO> dashBoardNewMember(Map<String, Object> newMemberMap){
		return sqlSession.selectList("admin.dashBoardNewMember", newMemberMap);
	}
	
//	대쉬보드 문의사항
	public List<DashBoardAskAdminDTO> dashBoardAskAdmin(Map<String, Object> askAdminMap){
		return sqlSession.selectList("admin.dashBoardAskAdmin", askAdminMap);
	}
	
//	대쉬보드 멘티 최근 질문글
	public List<DashBoardMenteeQuestionDTO> dashBoardMenteeQuestion(Map<String, Object> menteeQuestionMap){
		return sqlSession.selectList("admin.dashBoardMenteeQuestion", menteeQuestionMap);
	}
	
//	대쉬보드 멘토 최근 답변
	public List<DashBoardMentorReplyDTO> dashBoardMentorReply(Map<String, Object> mentorReplyMap) {
		return sqlSession.selectList("admin.dashBoardMentorReply", mentorReplyMap);
	}
	
//	멘토 답변 목록
	public List<MentorReplyListDTO> mentorReplyList(Map<String, Object> mentorReplyListMap) {
		return sqlSession.selectList("admin.mentorReplyList", mentorReplyListMap);
	}
	
//	멘토 답변 총 수
	public Long mentorReplyGetTotal() {
		return sqlSession.selectOne("admin.mentorReplyGetTotal");
	}
	
//	멘토 답변 목록 삭제
	public void mentorAnswerListDelete(Long answerId) {
		sqlSession.selectOne("admin.mentorAnswerListDelete", answerId);
	}
	
//	멘티 질문 목록
	public List<MenteeQuestionListDTO> menteeQuestionList(Map<String, Object> menteeQuestionListMap) {
		return sqlSession.selectList("admin.menteeQuestionList", menteeQuestionListMap);
	}
	
//	멘티 질문 총 수
	public Long menteeQuestionGetTotal() {
		return sqlSession.selectOne("admin.menteeQuestionGetTotal");
	}
	
//	멘티 질문 목록 삭제
	public void menteeQuestionListDelete(Long questionId) {
		sqlSession.selectOne("admin.menteeQuestionListDelete", questionId);
	}
	
//	질문글 댓글 목록
	public List<QuestionCommentListDTO> questionCommentList(Map<String, Object> questionCommentListMap) {
		return sqlSession.selectList("admin.questionCommentList", questionCommentListMap);
	}
	
//	질문글 댓글 총 수
	public Long questionCommentGetTotal() {
		return sqlSession.selectOne("admin.questionCommentGetTotal");
	}
	
//	질문글 댓글 목록 삭제
	public void questionCommentListDelete(Long commentId) {
		sqlSession.selectOne("admin.questionCommentListDelete", commentId);
	}
	
//	답변글 댓글 목록
	public List<AnswerCommentListDTO> answerCommentList(Map<String, Object> answerCommentListMap) {
		return sqlSession.selectList("admin.answerCommentList", answerCommentListMap);
	}
	
//	답변글 댓글 총 수
	public Long answerCommentGetTotal() {
		return sqlSession.selectOne("admin.answerCommentGetTotal");
	}
	
//	답변글 댓글 목록 삭제
	public void answerCommentListDelete(Long answerCommentId) {
		sqlSession.selectOne("admin.answerCommentListDelete", answerCommentId);
	}
	
}