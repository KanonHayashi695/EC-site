<%@ page import="java.util.ArrayList" %>
<%@ page import="jp.co.aforce.beans.ItemBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="header.html" %>

	<h1 id = "titleHeadphone">Headphone</h1>
	
	<% ArrayList<ItemBean> itemList = (ArrayList<ItemBean>) session.getAttribute("list"); %>
	
	
	<div id = "column" class = "column04">
	<ul>
	<% for (ItemBean bean : itemList) {%>
                        
    <%--
    <td><%= bean.getId()%></td>
    --%>
    <li><img src ="/img/${bean.id }.jpg"/><p><%= bean.getItemName()%></p><span class="int"><%= bean.getPrice()%>円</span></li>
                            
    
	
	<% } %>
	</ul>
	</div>
	
	       
	
<%@include file="footer.html" %>