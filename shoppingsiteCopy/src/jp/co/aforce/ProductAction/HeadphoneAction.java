package jp.co.aforce.ProductAction;

import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.co.aforce.Tools.Action;
import jp.co.aforce.beans.ShoppingProduct;
import jp.co.aforce.daos.ShoppingProductDAO;

@WebServlet()

public class HeadphoneAction extends Action{
	public String execute(
			HttpServletRequest request, HttpServletResponse response
			)throws Exception{
		
		HttpSession session=request.getSession();
		
		String keyword=request.getParameter("keyword");
		if(keyword==null) keyword="";
		
		ShoppingProductDAO daos=new ShoppingProductDAO();
		List<ShoppingProduct> listHeadphone=daos.search(keyword);
		session.setAttribute("listHeadphone", listHeadphone);
		
		if(request.getParameter("Headphone").equals("Headphone")) {
			List<ShoppingProduct> headphones=daos.getHeadphone();
			request.setAttribute("shoppingHeadphone",headphones);
		}
		return "HeadphoneList.jsp";
	}

}