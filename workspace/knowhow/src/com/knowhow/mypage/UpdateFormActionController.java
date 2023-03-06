package com.knowhow.mypage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.member.domain.MemberVO;
import com.knowhow.mypage.dao.MypageDAO;
import com.knowhow.mypage.domain.MyQuestionDTO;

public class UpdateFormActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("QuestionActionController");
		resp.setCharacterEncoding("UTF-8");
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		Long memberId = Long.valueOf(req.getParameter("memberId"));
		MypageDAO mypageDAO = new MypageDAO(); 
		JSONArray questionJSONs = new JSONArray();
		JSONObject memberObject = new JSONObject();
		MemberVO memberVO = null;

		return null;
	}

}
