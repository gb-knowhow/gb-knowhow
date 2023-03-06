package com.knowhow.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Result;

public class AdminFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		if(target.equals("adminMentorList")) {
			
		} else if(target.equals("adminMentorListAction")){
			result = new AdminMentorListActionController().execute(req, resp);
			
		} else if(target.equals("adminMentorDelete")){
			
		}else if(target.equals("adminMentorDeleteAction")){
			result = new AdminMentorDeleteActionController().execute(req, resp);
			
		}else if(target.equals("adminMenteeList")){
			
		}else if(target.equals("adminMenteeListAction")){
			result = new AdminMenteeListActionController().execute(req, resp);
			
		}else if(target.equals("adminMenteeDelete")){
			
		}else if(target.equals("adminMenteeDeleteAction")){
			result = new AdminMenteeDeleteActionController().execute(req, resp);
			
		}else if(target.equals("adminResumeList")){
			
		}else if(target.equals("adminResumeListAction")){
			
		}else if(target.equals("adminResumeDelete")){
			
		}else if(target.equals("adminResumeDeleteAction")){
			
		}else if(target.equals("adminQuestionList")){
//		멘티 질문 목록
		}else if(target.equals("adminQuestionListAction")){
			result = new AdminQuestionListActionController().execute(req, resp);
			
		}else if(target.equals("adminQuestionDetail")){
			
		}else if(target.equals("adminQuestionDetailAction")){
			result = new AdminQuestionDetailActionController().execute(req, resp);
			
		}else if(target.equals("adminQuestionDelete")){
//			멘티 질문 목록 삭제
		}else if(target.equals("adminQuestionDeleteAction")){
			result = new AdminQuestionDeleteActionController().execute(req, resp);
			
		}else if(target.equals("adminQuestionCommentList")){
//			질문글 댓글 목록
		}else if(target.equals("adminQuestionCommentListAction")){
			result = new AdminQuestionCommentListActionController().execute(req, resp);
			
		}else if(target.equals("adminQuestionCommentDetail")){
			
		}else if(target.equals("adminQuestionCommentDetailAction")){
			result = new AdminQuestionCommentDetailActionController().execute(req, resp);
//			질문긋 댓글 삭제
		}else if(target.equals("adminQuestionCommentDelete")){
			
		}else if(target.equals("adminQuestionCommentDeleteAction")){
			result = new AdminQuestionCommentDeleteActionController().execute(req, resp);
			
		}else if(target.equals("adminMentorAnswerList")){
			
		}else if(target.equals("adminMentorAnswerListAction")){
			result = new AdminMentorAnswerListActionController().execute(req, resp);
			
		}else if(target.equals("adminMentorAnswerDetail")){
			
		}else if(target.equals("adminMentorAnswerDetailAction")){
			result = new AdminMentorAnswerDetailActionController().execute(req, resp);
			
		}else if(target.equals("adminMentorAnswerDelete")){
//			멘토 답변 글 삭제
		}else if(target.equals("adminMentorAnswerDeleteAction")){
			result = new AdminMentorAnswerDeleteActionController().execute(req, resp);
			
		}else if(target.equals("adminAnswerCommentList")){
//			답글의 댓글 목록
		}else if(target.equals("adminAnswerCommentListAction")){
			result = new AdminAnswerCommentListActionController().execute(req, resp);
			
		} else if(target.equals("adminAnswerCommentDelete")){
//			답글의 댓글 지우기
		} else if(target.equals("adminAnswerCommentDeleteAction")){
			result = new AdminAnswerCommentDeleteActionController().execute(req, resp);
			
		} else if(target.equals("adminAnswerCommentDetail")){
			
		} else if(target.equals("adminAnswerCommentDetailAction")){
			result = new AdminAnswerCommentDetailActionController().execute(req, resp);
			
		} else if(target.equals("adminAskDelete")){
			
		} else if(target.equals("adminAskDeleteAction")){
			result = new AdminAskDeleteActionController().execute(req, resp);
			
		} else if(target.equals("adminAskAnswerWrite")){
			
		} else if(target.equals("adminAskAnswerWriteAction")){
			result = new AdminAskAnswerWriteActionController().execute(req, resp);
			
		} else if(target.equals("adminBannerList")){
			
		} else if(target.equals("adminBannerListAction")){
			result = new AdminBannerListActionController().execute(req, resp);
			
		} else if(target.equals("adminBannerDetail")){
			
		} else if(target.equals("adminBannerDetailAction")){
			result = new AdminBannerDetailActionController().execute(req, resp);
			
		} else if(target.equals("adminDashBoard")) {
			
		} else if(target.equals("adminDashBoardAction")) {
			result = new AdminDashBoardActionController().execute(req, resp);
			
		} else if(target.equals("adminBannerAdd")){
			
		} else if(target.equals("adminBannerAddAction")){
			result = new AdminBannerAddActionController().execute(req, resp);
			
		}else {
			System.out.println(target);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
