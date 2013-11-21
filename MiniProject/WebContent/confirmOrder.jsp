<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mybeans.*" %> 
<%
request.setCharacterEncoding("utf-8");
String id = (String)session.getAttribute("id");
MemberDao manager = MemberDao.getInstance();
MemberVo c = manager.getMember(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="JavaScript">
    function begin(){
        document.userinput.name.focus();
    }
    function checkInfo() {
        var userinput = eval("document.userinput");
               
        if(!userinput.name.value ) {
            alert("이름을 입력하세요");
            document.userinput.name.focus();
            return false;
        }
        if(!userinput.phoneNumber.value ) {
            alert("전화번호를 입력하세요");
            document.userinput.phoneNumber.focus();
            return false;
        }
        if(!userinput.address.value ) {
            alert("주소를 입력하세요");
            document.userinput.address.focus();
            return false;
        }
    }
</script>
</head>
<body onload="begin()">
<br>
<jsp:include page="top.jsp"/>
<br>
<jsp:include page="login.jsp"/>
<br>
<form action="orderPro.jsp" name="userinput" onsubmit="return checkInfo()">
<table align="center" border="1" cellspacing="0" cellpadding="3">
<tr>
<td align="center">주문 메뉴 확인</td>
</tr>
<%
String p1=request.getParameter("p1name")+"/"+request.getParameter("p1count");
String p2=request.getParameter("p2name")+"/"+request.getParameter("p2count");
String p3=request.getParameter("p3name")+"/"+request.getParameter("p3count");
String d1=request.getParameter("d1name")+"/"+request.getParameter("d1count");
String d2=request.getParameter("d2name")+"/"+request.getParameter("d2count");
String d3=request.getParameter("d3name")+"/"+request.getParameter("d3count");
String b1=request.getParameter("b1name")+"/"+request.getParameter("b1count");
String b2=request.getParameter("b2name")+"/"+request.getParameter("b2count");
String b3=request.getParameter("b3name")+"/"+request.getParameter("b3count");
String sum=request.getParameter("sum")+"원";
	if(request.getParameter("p1name")!=""){
session.setAttribute("p1", p1);
    %>
		<tr>
		<td align="center"><%=p1%></td>
		</tr>
	<%}%>
	<%if(request.getParameter("p2name")!=""){
		session.setAttribute("p2", p2);
	%>
		<tr>
		<td align="center"><%=p2%></td>
		</tr>
	<%}%>
	<%if(request.getParameter("p3name")!=""){
		session.setAttribute("p3", p3);
	%>
		<tr>
		<td align="center"><%=p3%></td>
		</tr>
	<%}%>
	<%if(request.getParameter("d1name")!=""){
		session.setAttribute("d1", d1);
	%>
		<tr>
		<td align="center"><%=d1%></td>
		</tr>
	<%}%>
	<%if(request.getParameter("d2name")!=""){
		session.setAttribute("d2", d2);
	%>
		<tr>
		<td align="center"><%=d2%></td>
		</tr>
	<%}%>
	<%if(request.getParameter("d3name")!=""){
		session.setAttribute("d3", d3);
	%>
		<tr>
		<td align="center"><%=d3%></td>
		</tr>
	<%}%>
		<%if(request.getParameter("b1name")!=""){
			session.setAttribute("b1", b1);
		%>
		<tr>
		<td align="center"><%=b1%></td>
		</tr>
	<%}%>
	<%if(request.getParameter("b2name")!=""){
		session.setAttribute("b2", b2);
	%>
		<tr>
		<td align="center"><%=b2%></td>
		</tr>
	<%}%>
	<%if(request.getParameter("b3name")!=""){
		session.setAttribute("b3", b3);
	%>
		<tr>
		<td align="center"><%=b3%></td>
		</tr>
	<%}%>
	<%if(request.getParameter("sum")!="0"){
		session.setAttribute("sum", sum);
	%>
		<tr>
		<td align="center">총금액 : <%=sum%></td>
		</tr>
	<%}%>
</table>
<% 
if(id==null){%>
<br>
<table border="1" align="center" cellspacing="0" cellpadding="3">
<tr>
<td colspan="2" align="center">비회원 정보 입력</td>
</tr>
<tr>
<td align="center">이름</td>
<td align="center"><input type="text" name="name" value="" size="45" align="middle"></td>
</tr>
<tr>
<td align="center">전화번호</td>
<td align="center"><input type="text" name="phoneNumber" value="" size="45" align="middle"></td>
</tr>
<tr>
<td align="center">배달주소</td>
<td align="center"><input type="text" name="address" value="" size="45" align="middle"></td>
</tr>
</table>
<%}else{%>
<br>
<table border="1" align="center" cellspacing="0" cellpadding="3">
<tr>
<td colspan="2" align="center">주문자 정보 확인</td>
</tr>
<tr>
<td align="center">이름</td>
<td align="center"><input type="text" name="name" value="<%=c.getName()%>" size="45" align="middle"></td>
</tr>
<tr>
<td align="center">전화번호</td>
<td align="center"><input type="text" name="phoneNumber" value="<%=c.getPhoneNumber()%>" size="45" align="middle"></td>
</tr>
<tr>
<td align="center">배달주소</td>
<td align="center"><input type="text" name="address" value="<%=c.getAddress()%>" size="45" align="middle"></td>
</tr>
</table>
<%}%>
<br>
<table align="center" cellspacing="0" cellpadding="3">
<tr>
<td align="center"><input type="submit" value="주문 완료"></td>
<td align="center"><input type="button" value="주문 변경" onclick="history.back()"></td>
</tr>
</table>
</form>
</body>
</html>