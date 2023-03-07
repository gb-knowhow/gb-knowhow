package com.knowhow.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.member.dao.MemberDAO;


public class ChangePasswordActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MemberDAO memberDAO = new MemberDAO();
		Result result = new Result();
		Long memberId = null;
		String memberIdentification = null, newPassword = null;
		System.out.println(req.getParameter("memberId"));
//		맴버아이디를 url창에서 가져오고
		memberId = Long.valueOf(req.getParameter("memberId"));
		
		memberIdentification = memberDAO.getMemberIdentification(memberId);
		System.out.println("맴버아이디는" + memberIdentification);
		
		newPassword = req.getParameter("memberNewPassword");
		System.out.println("들어온 비밀번호는" + newPassword);
		
		memberDAO.changePassword(memberIdentification, newPassword);
		
		result.setPath("login.member");
		result.setRedirect(true);
		
		return result;
	}

}
