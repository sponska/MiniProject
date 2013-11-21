<%@page import="mybeans.MemberVo"%>
<%@page import="mybeans.MemberDao"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    	MemberDao manager = MemberDao.getInstance();
        Vector<MemberVo> vector = new Vector<MemberVo>();
            vector=manager.select();
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

<form method="post" action="modifyMemberPro.jsp" name="userinput" onsubmit="return checkIt()">
<table align="center" border="1" cellspacing="0" cellpadding="3">
<tr>
<td align="center">ID</td>
<td align="center">PASSWORD</td>
<td align="center">이름</td>
<td align="center"colspan="2">주민번호</td>
<td align="center">전화번호</td>
<td align="center">E-MAIL</td>
<td align="center">주소</td>
</tr>
<%
			for (int i = 0; i < vector.size(); i++) {
		%>
			<tr>
			<td align="center"><input type="text" name="id"  size="12" value="<%=vector.get(i).getId()%>" readonly="readonly">
			<td align="center"><input type="text" name="passwd" size="12" value="<%=vector.get(i).getPasswd()%>"></td>
			<td align="center"><input type="text" name="name" size="7" value="<%=vector.get(i).getName()%>"></td>
			<td align="center"><%=vector.get(i).getJumin1()%></td>
			<td align="center"><%=vector.get(i).getJumin2()%></td>
			<td align="center"><input type="text" name="phoneNumber" size="15" value="<%=vector.get(i).getPhoneNumber()%>"></td>
			<td align="center"><input type="text" name="email" size="20" value="<%=vector.get(i).getEmail()%>"></td>
			<td align="center"><input type="text" name="address" size="40" value="<%=vector.get(i).getAddress()%>"></td>
			<td align="center"><input type="submit" value="수정"></td>
			<td align="center"><input type="button" value="삭제" onclick="javascript:window.location='memberDeletePro.jsp?id=<%=vector.get(i).getId()%>&passwd=<%=vector.get(i).getPasswd()%>'"></td>
		</tr>

		<%
			}
		%>
</table>
</form>
</body>
</html>