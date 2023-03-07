package com.knowhow.mypage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.answerComment.domain.AnswerCommentVO;
import com.knowhow.mypage.dao.MypageDAO;
import com.knowhow.questionComment.domain.QuestionCommentVO;

public class MyCommentActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		Long memberId = Long.valueOf(req.getParameter("memberId"));
		MypageDAO mypageDAO = new MypageDAO(); 
		JSONArray questionJSONs = new JSONArray();
		JSONArray answerJSONs = new JSONArray();
		JSONObject commentJSON = new JSONObject();
		List<AnswerCommentVO> aCommentList = null;
		List<QuestionCommentVO> qCommentList = null;
		
		qCommentList = mypageDAO.myCommentsInQuestion(memberId);
		aCommentList = mypageDAO.myCommentsInAnswer(memberId);
		qCommentList.stream().map(question -> new JSONObject(question)).forEach(questionJSONs::put);
		qCommentList.stream().map(answer -> new JSONObject(answer)).forEach(answerJSONs::put);
		
		try {
			commentJSON.put("qCommentList", questionJSONs);
			commentJSON.put("aCommentList", answerJSONs);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		out.print(commentJSON.toString());
		out.close();
		return null;
	}

}
