<%@page import="mybeans.MemberDao"%>
<%@ page contentType="text/html;charset=utf-8" %>


<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="member" class="mybeans.MemberVo">
    <jsp:setProperty name="member" property="*" />
</jsp:useBean>
 
<%
 	String id = (String)session.getAttribute("id");
 if(id.equals("admin")){
 	id=request.getParameter("id");
 }
 	member.setId(id);
 	MemberDao manager = MemberDao.getInstance();
     manager.updateMember(member);
 %>
<link href="style.css" rel="stylesheet" type="text/css">

<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
  <tr> 
    <td height="39"  align="center">
	  <font size="+1" ><b>회원정보가 수정되었습니다.</b></font></td>
  </tr>
  <tr>
    <td align="center"> 
      <p>입력하신 내용대로 수정이 완료되었습니다.</p>
    </td>
  </tr>
  <tr>
    <td align="center"> 
     
      <%if(((String)session.getAttribute("id")).equals("admin")){
    response.sendRedirect("adminMember.jsp");
     }else{%>
       <form>
	    <input type="button" value="메인으로" onclick="window.location='main.jsp'">
      </form>
      5초후에 메인으로 이동합니다.<meta http-equiv="Refresh" content="5;url=main.jsp" >
      <%}%>
    </td>
  </tr>
</table>
</body>
</html>
