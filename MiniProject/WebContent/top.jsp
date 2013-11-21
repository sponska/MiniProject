<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String id="";
id=(String)session.getAttribute("id");
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" align="center" cellspacing="0" cellpadding="3">
<% if (id==null){%>
<tr>
<td width="250" align="center"><a href="main.jsp"><font style="text-decoration:none;">MAIN</font></a></td>
<td width="250" align="center"><a href="menu.jsp"><font style="text-decoration:none;">MENU</font></a></td>
<td width="250" align="center"><a href="event.jsp"><font style="text-decoration:none;">EVENT</font></a></td>
<td width="250" align="center"><a href="order.jsp"><font style="text-decoration:none;">GEST ORDER</font></a></td>
<td width="250" align="center"><a href="list.jsp"><font style="text-decoration:none;">BOARD</font></a></td>
</tr>
<%}else if(id.equals("admin")){%>
<tr>
<td width="250" align="center"><a href="main.jsp"><font style="text-decoration:none;">MAIN</font></a></td>
<td width="250" align="center"><a href="menu.jsp"><font style="text-decoration:none;">MENU</font></a></td>
<td width="250" align="center"><a href="event.jsp"><font style="text-decoration:none;">EVENT</font></a></td>
<td width="250" align="center"><a href="order.jsp"><font style="text-decoration:none;">ORDER</font></a></td>
<td width="250" align="center"><a href="admin.jsp"><font style="text-decoration:none;">ADMIN</font></a></td>
<td width="250" align="center"><a href="list.jsp"><font style="text-decoration:none;">BOARD</font></a></td>
</tr>
<%}else{%>
<tr>
<td width="250" align="center"><a href="main.jsp"><font style="text-decoration:none;">MAIN</font></a></td>
<td width="250" align="center"><a href="menu.jsp"><font style="text-decoration:none;">MENU</font></a></td>
<td width="250" align="center"><a href="event.jsp"><font style="text-decoration:none;">EVENT</font></a></td>
<td width="250" align="center"><a href="order.jsp"><font style="text-decoration:none;">ORDER</font></a></td>
<td width="250" align="center"><a href="list.jsp"><font style="text-decoration:none;">BOARD</font></a></td>
</tr>
<%}%>
</table>
</body>
</html>