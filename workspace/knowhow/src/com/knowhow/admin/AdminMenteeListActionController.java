package com.knowhow.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.knowhow.Action;
import com.knowhow.Result;
import com.knowhow.admin.dao.AdminDAO;
import com.knowhow.admin.domain.MenteeListDTO;
import com.knowhow.member.domain.MemberVO;

public class AdminMenteeListActionController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
      AdminDAO adminDAO = new AdminDAO();
      Result result = new Result();
      JSONArray jsons = new JSONArray();
      
      Map<String, Object> pageMap = new HashMap<String, Object>();
      
      String temp = req.getParameter("page"); 
      String sort = req.getParameter("sort");
      
      int page = temp == null ? 1 : Integer.parseInt(temp);
      
//      멘티 총 인원
      Long total = adminDAO.menteeGetTotal();
      
//      한 페이지에 출력되는 게시글의 개수
      int rowCount = 10;
      
//      한 페이지에서 나오는 페이지 버튼의 개수
      int pageCount = 5;
      int startRow = (page - 1) * rowCount;
      
      int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
      int startPage = endPage - (pageCount - 1);
      int realEndPage = (int)Math.ceil(total / (double)rowCount);
      
      boolean prev = startPage > 1;
      boolean next = false;
      endPage = endPage > realEndPage ? realEndPage : endPage;
      next = endPage != realEndPage;
      
      sort = sort == null ? "recent" : sort;
      
      pageMap.put("rowCount", rowCount);
      pageMap.put("startRow", startRow);
      pageMap.put("sort", sort);
      
      adminDAO.menteeList(pageMap).stream().map(board -> new JSONObject(board)).forEach(jsons::put);
      
      req.setAttribute("mentees", jsons.toString());
      req.setAttribute("total", total);
      req.setAttribute("startPage", startPage);
      req.setAttribute("endPage", endPage);
      req.setAttribute("page", page);
      req.setAttribute("prev", prev);
      req.setAttribute("next", next);
      req.setAttribute("sort", sort);
      
      result.setPath("/html/lut/user-mentee-manager.jsp");
      
      return result;
   }

}