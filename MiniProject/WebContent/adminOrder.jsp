<%@page import="mybeans.OrderVo"%>
<%@page import="mybeans.OrderDao"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    	OrderDao manager = OrderDao.getInstance();
        Vector<OrderVo> vector = new Vector<OrderVo>();
            vector=manager.selectOrder();
    %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
<jsp:include page="top.jsp"/>
<br>
<jsp:include page="login.jsp"/>
<br>

<form method="post" action="modifyOrder.jsp" name="userinput" onsubmit="return checkIt()">
<table align="center" border="1" cellspacing="0" cellpadding="3">
<tr>
<td align="center">이름</td>
<td align="center">전화번호</td>
<td align="center">주소</td>
<td align="center">주문</td>
<td align="center">금액</td>
</tr>
<%
			for (int i = 0; i < vector.size(); i++) {
		%>
			<tr>
			<td align="center"><input type="text" name="name" value="<%=vector.get(i).getName()%>"></td>
			<td align="center"><input type="text" name="phoneNumber" value="<%=vector.get(i).getPhoneNumber()%>"></td>
			<td align="center"><input type="text" name="address" value="<%=vector.get(i).getAddress()%>"></td>
			<td align="center"><input type="text" name="menuAndCount" value="<%=vector.get(i).getMenuAndCount()%>"></td>
			<td align="center"><input type="text" name="sumPrice" value="<%=vector.get(i).getSumPrice()%>"></td>
			<td align="center"><input type="submit" value="수정"></td>
			<td align="center"><input type="button" value="완료" onclick="javascript:window.location='deleteOrder.jsp?name=<%=vector.get(i).getName()%>'"></td>
		</tr>

		<%
			}
		%>
</table>
</form>
</body>
</html>