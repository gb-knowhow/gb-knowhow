package com.knowhow.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.member.dao.MemberDAO;

public class LoginActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		String autoLogin = req.getParameter("autoLogin");
		Boolean isChecked = false;
		String memberIdentification = req.getParameter("memberIdentification");
		String memberPassword = req.getParameter("memberPassword");
		Long memberId = memberDAO.login(memberIdentification, memberPassword);
		String memberSystemName = memberDAO.getProfileSystemName(memberId);
		boolean resumeExistence = memberDAO.getResumeExistence(memberId);
		
		String path = null;
		Result result = new Result();
		
		System.out.println("autoLogin은 " + autoLogin +" 입니다");
		
		if(autoLogin == null) {
			
		} else if(autoLogin.equals("on")) {
			isChecked = true;
		} else {
			isChecked = false;
		}
		
		if(memberId == null) {
			memberIdentification = String.valueOf(req.getAttribute("memberIdentification"));
			memberPassword = String.valueOf(req.getAttribute("memberPassword"));
			memberId = memberDAO.login(memberIdentification, memberPassword);
		} 
		
		System.out.println("isChecked 지금" + isChecked);
		System.out.println("맴버 아이디" + memberId);
		
		if(memberId != null) {
			if(isChecked) {
				Cookie memberIdentificationCookie = new Cookie("memberIdentification", memberIdentification);
				Cookie memberPasswordCookie = new Cookie("memberPassword", memberPassword);
				Cookie memberChecked = new Cookie("memberChecked", String.valueOf(isChecked));
				resp.addCookie(memberIdentificationCookie);
				resp.addCookie(memberPasswordCookie);
				resp.addCookie(memberChecked);
			}
			session.setAttribute("memberId", memberId);
			session.setAttribute("memberSystemName", memberSystemName);
			session.setAttribute("resumeExistence", resumeExistence);
			
			System.out.println("세션에 저장된 memberId는" + session.getAttribute("memberId") );
			System.out.println("세션에 저장된 memberSystemName은 " + session.getAttribute("memberSystemName"));
			System.out.println("세션에 저장된 resumeExistence은 " + session.getAttribute(String.valueOf("resumeExistence")));
			
//			메인 경로 수정해주기
			path = req.getContextPath() + "templates/main/main_content.jsp";
		}
		
		else {
			path = req.getContextPath() + "/login.member?login=false";
		}
		result.setPath(path);
		result.setRedirect(true);
		return result;
	}

}
