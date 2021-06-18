package jp.co.aforce.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.DAO.ItemDAOTest;
import jp.co.aforce.beans.ItemBean;
import jp.co.aforce.tool.Page;

public class ItemListServlet extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		Page.header(out);
		
		ItemBean itemBean = new ItemBean();
		
		ItemDAOTest itemdaoTest = new ItemDAOTest();
		
		//ItemDAO dao = new ItemDAO();
		
		itemBean.setId(id);
		
		HttpSession session = request.getSession();
		
		session.setAttribute("list", list);
		
		
		/*request.getRequestDispatcher("../views/itemList.jsp")
				.forward(request, response);*/
		Page.footer(out);
	}
}