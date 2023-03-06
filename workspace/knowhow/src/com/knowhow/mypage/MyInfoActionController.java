package com.knowhow.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.member.domain.MemberVO;
import com.knowhow.mypage.dao.MypageDAO;

public class MyInfoActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("QuestionActionController");
		resp.setCharacterEncoding("UTF-8");
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		Long memberId = Long.valueOf(req.getParameter("memberId"));
		MypageDAO mypageDAO = new MypageDAO(); 
		MemberVO memberVO = new MemberVO();
		JSONObject jsonObject = null;
		
		memberVO = mypageDAO.selectMyInfo(memberId);
		
		jsonObject = new JSONObject(memberVO);
		
		out.print(jsonObject.toString());
		out.close();
		return null;
	}

}
