<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
  String menu =(String)request.getParameter("menu");
       if(menu==null){
	        menu="new.jsp";
      }else{
    	  menu=menu+".jsp";
      }
       %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MENU</title>
</head>
<body>
<br>
<jsp:include page="top.jsp"/>
<br>
<jsp:include page="login.jsp"/>
<br>
<table border="1" align="center" cellspacing="0" cellpadding="3">
<tr>
<td width="100" align="center" ><a href="menu.jsp?menu=new">신제품</a></td>
<td width="100" align="center"><a href="menu.jsp?menu=pizza">피자</a></td>
<td width="100" align="center"><a href="menu.jsp?menu=sidedish">사이드디쉬</a></td>
<td width="100" align="center"><a href="menu.jsp?menu=beverage">음료</a></td>
</tr>
<tr>

<td colspan="5" align="center">
<jsp:include page="<%=menu%>"></jsp:include>
</td>
</tr>
</table>
</body>
</html>