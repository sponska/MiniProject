<%@page import="mybeans.OrderDao"%>
<%@ page contentType="text/html;charset=utf-8" %>

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="orderVo" class="mybeans.OrderVo">
    <jsp:setProperty name="orderVo" property="*" />
</jsp:useBean>
<%
	OrderDao manager = OrderDao.getInstance();
    manager.modifyOrder(orderVo);
    response.sendRedirect("adminOrder.jsp");
%>
