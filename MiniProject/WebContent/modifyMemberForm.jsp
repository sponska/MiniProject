<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import = "mybeans.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보수정</title>



<script language="JavaScript">
 
    function checkIt() {
        var userinput = eval("document.userinput");
               
        if(!userinput.passwd.value ) {
            alert("비밀번호를 입력하세요");
            return false;
        }
        if(userinput.passwd.value != userinput.passwd2.value)
        {
            alert("비밀번호를 동일하게 입력하세요");
            return false;
        }
       
        if(!userinput.username.value) {
            alert("사용자 이름을 입력하세요");
            return false;
        }
        if(!userinput.jumin1.value  || !userinput.jumin2.value )
        {
            alert("주민등록번호를 입력하세요");
            return false;
        }
    }

</script>

<%
    String id = (String)session.getAttribute("id");
   
    MemberDao manager = MemberDao.getInstance();
    MemberVo c = manager.getMember(id);

	try{
%>

<body>
<br>
<jsp:include page="top.jsp"/>
<br>
<jsp:include page="login.jsp"/>
<br>
<form method="post" action="modifyMemberPro.jsp" name="userinput" onsubmit="return checkIt()">

  <table width="600" border="1" cellspacing="0" cellpadding="3"  align="center">
    <tr > 
      <td  colspan="2" height="39" align="center">
	     <font size="+1" ><b>회원 정보수정</b></font></td>
    </tr>
    <tr>
      <td colspan="2" class="normal" align="center">회원의 정보를 수정합니다.</td>
    </tr>
     <tr> 
      <td width="200"><b>아이디 입력</b></td>
      <td width="400">&nbsp;</td>
    </tr>  

    <tr> 
      <td  width="200"> 사용자 ID</td>
      <td  width="400"><%=c.getId()%></td>
    </tr>
    
     <tr> 
      <td width="200"> 비밀번호</td>
      <td width="400"> 
        <input type="password" name="passwd" size="10" maxlength="10" value="<%=c.getPasswd()%>">
      </td>
    <tr>  
    <tr> 
      <td  width="200"><b>개인정보 입력</b></td>
      <td width="400">&nbsp;</td>
    <tr>  
    <tr> 
      <td   width="200">사용자 이름</td>
      <td  width="400"> 
        <input type="text" name="name" size="15" maxlength="20" value="<%=c.getName()%>">
      </td>
    </tr>
    <tr> 
      <td width="200">주민등록번호</td>
      <td width="400"> 
        <%=c.getJumin1()%>-<%=c.getJumin2()%>
      </td>
    </tr>
       <tr> 
      <td width="200">전화번호</td>
      <td width="400">
	    <%if(c.getPhoneNumber()==null){%>
		  <input type="text" name="phoneNumber" size="40" maxlength="30" >
		<%}else{%>
          <input type="text" name="phoneNumber" size="40" maxlength="30" value="<%=c.getPhoneNumber()%>">	
		<%}%>
      </td>
    </tr>
   <tr> 
      <td width="200">E-Mail</td>
      <td width="400">
	    <%if(c.getEmail()==null){%>
		  <input type="text" name="email" size="40" maxlength="30" >
		<%}else{%>
          <input type="text" name="email" size="40" maxlength="30" value="<%=c.getEmail()%>">	
		<%}%>
      </td>
    </tr>
    <tr> 
      <td width="200">주소</td>
      <td width="400"> 
	    <%if(c.getAddress()==null){%>
		  <input type="text" name="address" size="60" maxlength="50" >
		<%}else{%>
          <input type="text" name="address" size="60" maxlength="50" value="<%=c.getAddress()%>">
		<%}%>
      </td>
    </tr>      
    <tr> 
      <td colspan="2" align="center"> 
       <input type="submit" name="modify" value="수   정" >
       <input type="button" value="취  소" onclick="javascript:window.location='main.jsp'">      
      </td>
    </tr>
  </table>
</form>
</body>
<%}catch(Exception e){}%>
</html>