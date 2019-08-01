package com.neu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neu.entity.Accp;
import com.neu.service.AccpService;
import com.neu.service.AccpServiceImpl;

/**
 * Servlet implementation class AccpServlet
 */
@WebServlet("/AccpServlet")
public class AccpServlet extends HttpServlet {
	private AccpService accpService = new AccpServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String type = request.getParameter("type");
		String name = request.getParameter("name");
		String idcard = request.getParameter("idcard");
		String method = request.getParameter("method");
		
		try {
			switch(method) {
			case "getByPersonAndType" :
				doGetByPersonAndType(name, idcard, type, request, response);
				return;
			default:
				return;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void doGetByPersonAndType(String name,String idcard,String type,HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		List<Accp> accps = accpService.getByPersonAndType(name, idcard, type);
		String msg = "";
		if(accps == null) {
			msg = "没有查询到该学员！";
		}
		request.setAttribute("accps", accps);
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("/main.jsp").forward(request, response);
		
	}
	

}
