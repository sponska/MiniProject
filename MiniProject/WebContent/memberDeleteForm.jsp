<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원탈퇴</title>
<link href="style.css" rel="stylesheet" type="text/css">

   <script language="javascript">
   
       function begin(){
         document.myform.passwd.focus();
       }

       function checkIt(){
		  if(!document.myform.passwd.value){
           alert("비밀번호를 입력하지 않으셨습니다.");
           document.myform.passwd.focus();
           return false;
         }
	   }   

   </script>
</head>
<BODY onload="begin()">
<br>
<jsp:include page="top.jsp"/>
<br>
<jsp:include page="login.jsp"/>
<br>
<form name="myform" action="memberDeletePro.jsp" method="post" onSubmit="return checkIt()">
<TABLE cellspacing="0" cellpadding="3" width="260" border=1 align="center" cellspacing="0" cellpadding="3">
  
  <TR height="30">
    <TD colspan="2" align="middle">
	  <font size="+1" ><b>회원 탈퇴</b></font></TD></TR>
  
  <TR height="30">
    <TD width="110" align=center>비밀번호</TD>
    <TD width="150" align=center>
      <INPUT type=password name="passwd"  size="15" maxlength="12"></TD></TR>
  <TR height="30">
    <TD colspan="2" align="middle">
      <INPUT type=submit value="회원탈퇴"> 
      <input type="button" value="취  소" onclick="javascript:window.location='main.jsp'"></TD></TR>
</TABLE>
</form>
</BODY>
</HTML>
