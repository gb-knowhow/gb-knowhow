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
import com.knowhow.mypage.dao.MypageDAO;
import com.knowhow.mypage.domain.MyAnswerDTO;

public class MyLikeAnswerActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		Long memberId = Long.valueOf(req.getParameter("memberId"));
		MypageDAO mypageDAO = new MypageDAO(); 
		JSONArray answerJSONs = new JSONArray();
		List<MyAnswerDTO> answerList = null;
		
		answerList = mypageDAO.selectMylikeAnswer(memberId);
		answerList.stream().map(answer -> new JSONObject(answer)).forEach(answerJSONs::put);
		
		out.print(answerJSONs);
		out.close();
		return null;
	}

}
