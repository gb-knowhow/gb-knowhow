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
			result = new AdminResumeListActionController().execute(req, resp);
			
		}else if(target.equals("adminResumeDelete")){
			
		}else if(target.equals("adminResumeDeleteAction")){
			result = new AdminResumeDeleteActionController().execute(req, resp);
			
		}else if(target.equals("adminQuestionList")){
			
		}else if(target.equals("adminQuestionListAction")){
			result = new AdminQuestionListActionController().execute(req, resp);
			
		}else if(target.equals("adminQuestionDetail")){
			
		}else if(target.equals("adminQuestionDetailAction")){
			result = new AdminQuestionDetailActionController().execute(req, resp);
			
		}else if(target.equals("adminQuestionDelete")){
			
		}else if(target.equals("adminQuestionDeleteAction")){
			result = new AdminQuestionDeleteActionController().execute(req, resp);
			
		}else if(target.equals("adminQuestionCommentList")){
			
		}else if(target.equals("adminQuestionCommentListAction")){
			result = new AdminQuestionCommentListActionController().execute(req, resp);
			
		}else if(target.equals("adminQuestionCommentDetail")){
			
		}else if(target.equals("adminQuestionCommentDetailAction")){
			result = new AdminQuestionCommentDetailActionController().execute(req, resp);
			
		}else if(target.equals("adminQuestionCommentDelete")){
			
		}else if(target.equals("adminQuestionCommentDeleteAction")){
			result = new AdminQuestionCommentDeleteActionController().execute(req, resp);
			
		}else if(target.equals("adminAnswerList")){
			
		}else if(target.equals("adminAnswerListAction")){
			result = new AdminAnswerListActionController().execute(req, resp);
			
		}else if(target.equals("adminAnswerDetail")){
			
		}else if(target.equals("adminAnswerDetailAction")){
			result = new AdminAnswerDetailActionController().execute(req, resp);
			
		}else if(target.equals("adminAnswerDelete")){
			
		}else if(target.equals("adminAnswerDeleteAction")){
			result = new AdminAnswerDeleteActionController().execute(req, resp);
			
		}else if(target.equals("adminAnswerCommentList")){
			
		}else if(target.equals("adminAnswerCommentListAction")){
			result = new AdminAnswerCommentListActionController().execute(req, resp);
			
		} else if(target.equals("adminAnswerCommentDelete")){
			
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
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
