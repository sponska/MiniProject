<%@page import="mybeans.MemberDao"%>
<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
<title>회원탈퇴</title>
</head>

<%
	String id = (String)session.getAttribute("id");
if(id.equals("admin")){
	id=request.getParameter("id");
}
	String passwd  = request.getParameter("passwd");
	
	MemberDao manager = MemberDao.getInstance();
    int check = manager.deleteMember(id,passwd);
	
	if(check==1){
		if(((String)session.getAttribute("id")).equals("admin")){
		response.sendRedirect("adminMember.jsp");
		}else{session.invalidate();}
%>
<body>
<form method="post" action="main.jsp" name="userinput" >
<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
  <tr> 
    <td height="39" align="center">
	  <font size="+1" ><b>회원정보가 삭제되었습니다.</b></font></td>
  </tr>
  <tr>
    <td align="center"> 
      <p>흑흑.... 서운합니다. 안녕히 가세요.</p>
      <meta http-equiv="Refresh" content="5; url=main.jsp" >
    </td>
  </tr>
  <tr>
    <td align="center"> 
      <input type="submit" value="확인">
    </td>
  </tr>
</table>
</form>
<%}else {%>
	<script> 
	  alert("비밀번호가 맞지 않습니다."+<%=id%>+<%=passwd%>);
      history.go(-1);
	</script>
<%}%>

</body>
</html>
