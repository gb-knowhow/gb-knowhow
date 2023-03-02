package com.knowhow.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.knowhow.Action;
import com.knowhow.Result;

public class LoginController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String memberIdentification = null, memberPassword = null, memberChecked = null;
		boolean check = false;
		
		if(req.getHeader("Cookie") != null) {
			Cookie[] cookies = req.getCookies();
			for (Cookie cookie : cookies) {
				
				if(cookie.getName().equals("memberIdentification")) {
					memberIdentification = cookie.getValue();
					check = true;
				}else if(cookie.getName().equals("memberPassword")) {
					memberPassword = cookie.getValue();
					check = true;
				} 
				
				if(cookie.getName().equals("memberChecked")) {
					memberChecked = cookie.getValue();
				}
			}
		}
		System.out.println("login Controller의 맴버채크" + memberChecked + "입니다");
		
		if(check) {
			req.setAttribute("memberIdentification", memberIdentification);
			req.setAttribute("memberPassword", memberPassword);
			req.setAttribute("memberChecked", Boolean.valueOf(memberChecked));
			result.setPath("templates/main/main_content.jsp");
		}else {
			result.setPath("templates/member/login.jsp");
		}
		return result;
	}
}
