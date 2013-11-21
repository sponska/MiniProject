<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String id =(String)session.getAttribute("id");
boolean check=false;
if(id!=null){
	check=true;
}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script language="javascript">
  

    
       function checkIt(){
         if(!document.myform.id.value){
           alert("아이디를 입력하지 않으셨습니다.");
           document.myform.id.focus();
           return false;
         }
         if(!document.myform.passwd.value){
           alert("비밀번호를 입력하지 않으셨습니다.");
           document.myform.passwd.focus();
           return false;
         }
       }

 </script>     
</head>
<%if(id==null){%>
<body>
<form name="myform" action="loginPro.jsp" method="post" onSubmit="return checkIt()">
<table border="1" align="center" cellspacing="0" cellpadding="3">
<tr>
<td align="center" width="90">ID</td>
<td align="center" width="90"><input type="text" name="id" size="20"></td>
<td align="center" width="90">PASSWORD</td>
<td align="center" width="90"><input type="password" name="passwd" size="21"></td>
<td align="center" colspan="2"><input type="submit" value="확인"></td>
<td><input type="button" value="가입하기" onclick="javascript:window.location='ConfirmInsertMember.jsp'"></td>
</tr>

</table>
</form>
</body>
<%}else{%>
<body>
<table border="1" align="center" cellspacing="0" cellpadding="3">
<tr>
<td align="center" width="90"><%=id%></td>
<td align="center" width="90"><a href="logout.jsp">LOGOUT</a></td>
<td align="center" width="90"><a href="modifyMember.jsp">정보수정</a></td>
</tr>
</table>
</body>
<%}%>
</html>