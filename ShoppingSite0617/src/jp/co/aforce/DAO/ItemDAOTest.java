package jp.co.aforce.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.beans.ItemBean;

//@WebServlet(urlPatterns={"/jp.co.aforce.DAO/item"})
public class ItemDAOTest extends DAO{
	public List<ItemBean> selectItem() throws Exception{
		
			Connection con = getConnection();
			
			PreparedStatement st = con.prepareStatement(
				"select * from item");
			ResultSet rs = st.executeQuery();
			
			
			ArrayList<ItemBean> list = new ArrayList<>();
			
			while (rs.next()) {
				ItemBean ib = new ItemBean();
				
				ib.setId(rs.getInt("id"));
                
                ib.setItemName(rs.getString("itemName"));
               
                ib.setPrice(rs.getInt("price"));
               
                ib.setCategoryId(rs.getInt("categoryId"));
                
                list.add(ib);
                System.out.println(list);
			}
			
			st.close();
			con.close();
			
			return list;
	}
}
