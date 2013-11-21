<%@page import="BeansTest.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import = "java.sql.Timestamp" %> //오늘날짜가 글쓴 날짜로 사용

<%
	request.setCharacterEncoding("utf-8");
%>

//writeform.jsp페이지에서 입력한 글을 가지고 BoardDataBean 객체를 생성하고, 
//레퍼런스는 article이다.
<jsp:useBean id="article" scope="page" class="BeansTest.BoardDataBean">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
 
<%
 	//글쓴 날짜나 IP주소는 파라미터로 넘어오는 값이 아니기에 따로 
  	//BoardDataBean객체에 설정했다.
      article.setReg_date(new Timestamp(System.currentTimeMillis()) );
  	article.setIp(request.getRemoteAddr());

  	//글쓰기 처리
      BoardDBBean dbPro = BoardDBBean.getInstance();
      dbPro.insertArticle(article);

  	//글쓰기에 성공하면 list.jsp페이지로 제어를 이동한다.
      response.sendRedirect("list.jsp");
 %>