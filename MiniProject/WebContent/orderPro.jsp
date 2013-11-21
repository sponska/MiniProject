<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybeans.*" %>    
<%
OrderVo vo = new OrderVo();
OrderDao dao = OrderDao.getInstance();
String name=request.getParameter("name");
String phoneNumber=request.getParameter("phoneNumber");
String address=request.getParameter("address");
String menuAndCount="";
if((String)session.getAttribute("p1")!=null){
	menuAndCount=menuAndCount+(String)session.getAttribute("p1");
}
if((String)session.getAttribute("p2")!=null){
	menuAndCount=menuAndCount+(String)session.getAttribute("p2");
}
if((String)session.getAttribute("p3")!=null){
	menuAndCount=menuAndCount+(String)session.getAttribute("p3");
}
if((String)session.getAttribute("d1")!=null){
	menuAndCount=menuAndCount+(String)session.getAttribute("d1");
}
if((String)session.getAttribute("d2")!=null){
	menuAndCount=menuAndCount+(String)session.getAttribute("d2");
}
if((String)session.getAttribute("d3")!=null){
	menuAndCount=menuAndCount+(String)session.getAttribute("d3");
}
if((String)session.getAttribute("b1")!=null){
	menuAndCount=menuAndCount+(String)session.getAttribute("b1");
}
if((String)session.getAttribute("b2")!=null){
	menuAndCount=menuAndCount+(String)session.getAttribute("b2");
}
if((String)session.getAttribute("b3")!=null){
	menuAndCount=menuAndCount+(String)session.getAttribute("b3");
}
String sum=(String)session.getAttribute("sum");
vo.setName(name);
vo.setPhoneNumber(phoneNumber);
vo.setAddress(address);
vo.setMenuAndCount(menuAndCount);
vo.setSumPrice(sum);
dao.insertOrder(vo);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
alert("주문이 완료되었습니다.");
window.location="main.jsp";
</script>
</head>
<body>

</body>
</html>