package com.knowhow.mypage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.mypage.dao.MypageDAO;
import com.knowhow.mypage.domain.MoreMyAnswerDTO;
import com.knowhow.mypage.domain.MyAnswerDTO;
import com.knowhow.mypage.domain.MyQuestionDTO;

public class MyAnswerActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		System.out.println("AnswerActionController");
//		resp.setCharacterEncoding("UTF-8");
//		Result result = new Result();
//		PrintWriter out = resp.getWriter();
//		Long memberId = Long.valueOf(req.getParameter("memberId"));
//		MypageDAO mypageDAO = new MypageDAO(); 
////		JSONArray answerJSONs = new JSONArray();
//		List<MyAnswerDTO> answerList = null;
//		
//		
//		int rowCount = 5;
//		String temp = req.getParameter("page");
//		int page = temp == null ? 1 : Integer.parseInt(temp);
//		int startRow = (page - 1) * rowCount;
//		int nextStartRow = page * rowCount;
//		Map<String, Object> pageMap = new HashMap<String, Object>();
//		
//		MoreMyAnswerDTO myAnswerMoreDTO = new MoreMyAnswerDTO();
//		JSONArray jsonArray = new JSONArray();
//		JSONObject jsonObject = new JSONObject();
//		
//		pageMap.put("memberId", memberId);
//		pageMap.put("startRow", startRow);
//		pageMap.put("nextStartRow", nextStartRow);
//		pageMap.put("rowCount", rowCount);
//		
//		
//		answerList = mypageDAO.selectMyAnswers(pageMap);
//	
//		myAnswerMoreDTO.setMyAnswerDTOs(mypageDAO.selectMyAnswers(pageMap));
//		myAnswerMoreDTO.setNextPage(mypageDAO.isNextPage(pageMap));
//		
//		myAnswerMoreDTO.getMyAnswerDTOs().stream().map(MyAnswerDTO -> new JSONObject(MyAnswerDTO)).forEach(jsonArray::put);
//		try {
//			jsonObject.put("isNextPage", myAnswerMoreDTO.isNextPage());
//			jsonObject.put("answers", jsonArray);
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}
//		
//		out.print(jsonObject.toString());
//		out.close();
		
		resp.setCharacterEncoding("UTF-8");
		Result result = new Result();
		PrintWriter out = resp.getWriter();
		Long memberId = Long.valueOf(req.getParameter("memberId"));
		MypageDAO mypageDAO = new MypageDAO(); 
		JSONArray answerJSONs = new JSONArray();
		List<MyAnswerDTO> answerList = null;
		
		answerList = mypageDAO.selectMyAnswers(memberId);
		answerList.stream().map(answer -> new JSONObject(answer)).forEach(answerJSONs::put);
		
		out.print(answerJSONs);
		out.close();
		
		return null;
	}

}
