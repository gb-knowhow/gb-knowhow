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
import com.knowhow.mypage.dao.MypageDAO;
import com.knowhow.question.domain.QuestionVO;

public class MyQuestionActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		System.out.println("QuestionActionController");
		resp.setCharacterEncoding("UTF-8");
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		Long memberId = Long.valueOf(req.getParameter("memberId"));
		MypageDAO mypageDAO = new MypageDAO(); 
		JSONArray questionJSONs = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		List<QuestionVO> questionList = null;
		
		questionList = mypageDAO.selectMyQuestion(memberId);
		questionList.stream().map(question -> new JSONObject(question)).forEach(questionJSONs::put);
		
//		try {
////			jsonObject.put("isNextPage", replyMoreDTO.isNextPage());
//			jsonObject.put("questions", questionJSONs);
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}
//		
//		System.out.println("jsonObject: "+jsonObject.toString());
		out.print(questionJSONs);
		out.close();
		
//		req.setAttribute("myQuestionLists", questionList);
//		result.setPath("/templates/mypage/myQuestion.jsp");
//		return result;
		return null;
		
	}

}
