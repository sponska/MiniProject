<%@page import="mybeans.MemberDao"%>
<%@ page contentType="text/html;charset=utf-8" %>

<%
	request.setCharacterEncoding("utf-8");
%>

<%
	String id = request.getParameter("id");
	String passwd  = request.getParameter("passwd");
	
	MemberDao manager = MemberDao.getInstance();
    int check= manager.userCheck(id,passwd);

	if(check==1){
		session.setAttribute("id",id);
		response.sendRedirect("main.jsp");
	}else if(check==0){
%>
	<script> 
	  alert("비밀번호가 맞지 않습니다.");
      history.go(-1);
	</script>
<%	}else{ %>
	<script>
	  alert("아이디가 맞지 않습니다..");
	  history.go(-1);
	</script>
<%}	%>	





