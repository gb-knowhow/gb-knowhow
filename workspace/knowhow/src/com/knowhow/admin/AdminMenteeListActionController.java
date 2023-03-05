package com.knowhow.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.admin.dao.AdminDAO;
import com.knowhow.admin.domain.MemberListDTO;

public class AdminMenteeListActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		AdminDAO adminDAO = new AdminDAO();
		Result result = new Result();


		Map<String, Object> pageMap = new HashMap<String, Object>();
		Map<String, Object> searchMap = new HashMap<String, Object>();

		String menteeKeyword = req.getParameter("menteeKeyword");
		String temp = req.getParameter("page"); 

		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		//

		searchMap.put("menteeKeyword", menteeKeyword);
		
		Long total = adminDAO.menteeGetTotal();
		//			      한 페이지에 출력되는 게시글의 개수
		int rowCount = 5;
		//	      한 페이지에서 나오는 페이지 버튼의 개수
		
		
		int pageCount = 5;
		int startRow = (page - 1) * rowCount;

		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);

		boolean prev = startPage > 1;
		boolean next = false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		pageMap.put("menteeKeyword", menteeKeyword);

		//	      화면 단에 JSON형식으로 줘야하니까 빈 jsonObject(json객체(화면이 이해하려면 key값 value값 형태인 json 형식으로 줘야한다.))에 넣는다.
		//		adminDAO.menteeList().stream().map(mentee -> new JSONObject(mentee)).forEach(jsons::put);

		//		JSON으로 보내는 것은 자바스크립트에서 사용할 때이다.

		//	      json형식인 jsons를 String으로 만들어서 태그 안에서 사용할 수 있게 해준다. items로 한다.
		
		req.setAttribute("mentees", adminDAO.menteeList(pageMap));
		req.setAttribute("menteeTotal", adminDAO.menteeGetTotal());
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("menteeKeyword", menteeKeyword);
		result.setPath("html/lut/user-mentee-manager.jsp");
		return result;
	}
}