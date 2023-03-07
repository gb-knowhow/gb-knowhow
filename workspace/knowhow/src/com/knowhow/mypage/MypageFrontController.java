package com.knowhow.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Result;

public class MypageFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("myHomePage")) {
			System.out.println("FrontController");
			result = new MypageActionController().execute(req, resp);
			
		}else if(target.equals("myQuestion")) {
			System.out.println("FrontController");
			result = new MyQuestionActionController().execute(req, resp);
			
		}else if(target.equals("myAnswer")) {
			System.out.println("FrontController");
			result = new MyAnswerActionController().execute(req, resp);
			
		}else if(target.equals("myUpdateForm")) {
			System.out.println("FrontController");
			result = new MyInfoActionController().execute(req, resp);
			
		}else if(target.equals("updateInfo")) {
			System.out.println("FrontController");
			result = new MyUpdateInfoActionController().execute(req, resp);
			
		}else if(target.equals("myLikeQuestion")) {
			System.out.println("FrontController");
			result = new MyLikeQuestionActionController().execute(req, resp);
			
		}else if(target.equals("myLikeAnswer")) {
			System.out.println("FrontController");
			result = new MyLikeAnswerActionController().execute(req, resp);
			
		}else if(target.equals("myComment")) {
			System.out.println("FrontController");
			result = new MyCommentActionController().execute(req, resp);
			
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
