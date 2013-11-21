<%@page import="mybeans.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    	String name=request.getParameter("name");
    OrderDao manager = OrderDao.getInstance();
    manager.deleteOrder(name);
    response.sendRedirect("adminOrder.jsp");
    %>
