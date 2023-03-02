package com.knowhow.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.member.LoginController;
import com.knowhow.Result;

public class MemberFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		
		System.out.println(target);
		
		if (target.equals("join")) {
			result = new Result();
			result.setPath("templates/member/knohow-join.jsp");
			
		} else if (target.equals("joinAction")) {
			result = new JoinActionController().execute(req, resp);
			
		} else if (target.equals("login")) {
			result = new LoginController().execute(req, resp);
			
		} else if (target.equals("loginAction")) {
			result = new LoginActionController().execute(req, resp);

		} else if (target.equals("checkIdAction")) {
			result = new CheckIdActionController().execute(req, resp);
			
		} else if (target.equals("checkNicknameAction")) {
			result = new CheckNickNameActionController().execute(req, resp);
			
		} else if (target.equals("logout")) {

		} else if (target.equals("myPage")) {
			
		} else if (target.equals("myPageAction")) {
			result = new MyPageActionController().execute(req, resp);
			
		} else if (target.equals("findMyId")) {
			
		} else if (target.equals("findMyIdAction")) {
			result = new FindMyIdActionController().execute(req, resp);
			
		} else if (target.equals("findMyPassword")) {
			
		} else if (target.equals("findMyPasswordAction")) {
			result = new FindMyPasswordActionController().execute(req, resp);
			
		} else if (target.equals("updateInfo")) {
			
		} else if (target.equals("updateInfoAction")) {
			result = new UpdateInfoActionController().execute(req, resp);
			
		} else {
			System.out.println(target);
		}

		if (result != null) {
			if (result.isRedirect()) {
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