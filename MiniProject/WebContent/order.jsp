<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	
	function addMenu(form, pizzaName, pizzaPrice, filedName) {
		if (filedName == "p1") {
			if(form.p1name.value==""){
				p1Count=0;
			}else{
				p1Count=form.p1count.value;
			}
			p1Count++;
			form.p1name.value = pizzaName;
			form.p1count.value = p1Count;
			form.p1price.value = p1Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		} else if (filedName == "p2") {
			if(form.p2name.value==""){
				p2Count=0;
			}else{
				p2Count=form.p2count.value;
			}
			p2Count++;
			form.p2name.value = pizzaName;
			form.p2count.value = p2Count;
			form.p2price.value = p2Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		} else if (filedName == "p3") {
			if(form.p3name.value==""){
				p3Count=0;
			}else{
				p3Count=form.p3count.value;
			}
			p3Count++;
			form.p3name.value = pizzaName;
			form.p3count.value = p3Count;
			form.p3price.value = p3Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		} else if (filedName == "d1") {
			if(form.d1name.value==""){
				d1Count=0;
			}else{
				d1Count=form.d1count.value;
			}
			d1Count++;
			form.d1name.value = pizzaName;
			form.d1count.value = d1Count;
			form.d1price.value = d1Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		} else if (filedName == "d2") {
			if(form.d2name.value==""){
				d2Count=0;
			}else{
				d2Count=form.d2count.value;
			}
			d2Count++;
			form.d2name.value = pizzaName;
			form.d2count.value = d2Count;
			form.d2price.value = d2Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		} else if (filedName == "d3") {
			if(form.d3name.value==""){
				d3Count=0;
			}else{
				d3Count=form.d3count.value;
			}
			d3Count++;
			form.d3name.value = pizzaName;
			form.d3count.value = d3Count;
			form.d3price.value = d3Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		} else if (filedName == "b1") {
			if(form.b1name.value==""){
				b1Count=0;
			}else{
				b1Count=form.b1count.value;
			}
			b1Count++;
			form.b1name.value = pizzaName;
			form.b1count.value = b1Count;
			form.b1price.value = b1Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		} else if (filedName == "b2") {
			if(form.p1name.value==""){
				b2Count=0;
			}else{
				b2Count=form.b2count.value;
			}
			b2Count++;
			form.b2name.value = pizzaName;
			form.b2count.value = b2Count;
			form.b2price.value = b2Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		} else if (filedName == "b3") {
			if(form.b3name.value==""){
				b3Count=0;
			}else{
				b3Count=form.b3count.value;
			}
			b3Count++;
			form.b3name.value = pizzaName;
			form.b3count.value = b3Count;
			form.b3price.value = b3Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		}
	}
	function subMenu(form, pizzaName, pizzaPrice, filedName) {
		p1Count=form.p1count.value;
		p2Count=form.p2count.value;
		p3Count=form.p3count.value;
		d1Count=form.d1count.value;
		d2Count=form.d2count.value;
		d3Count=form.d3count.value;
		b1Count=form.b1count.value;
		b2Count=form.b2count.value;
		b3Count=form.b3count.value;
		if (filedName == "p1" && p1Count > 0) {
		    
			p1Count--;
			form.p1name.value = pizzaName;
			form.p1count.value = p1Count;
			form.p1price.value = p1Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		}
		if (p1Count == 0) {
			form.p1name.value = "";
			form.p1count.value = "";
			form.p1price.value = "";
		}
		if (filedName == "p2" && p2Count > 0) {
			
			p2Count--;
			form.p2name.value = pizzaName;
			form.p2count.value = p2Count;
			form.p2price.value = p2Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		}
		if (p2Count == 0) {
			form.p2name.value = "";
			form.p2count.value = "";
			form.p2price.value = "";
		}
		if (filedName == "p3" && p3Count > 0) {
			
			p3Count--;
			form.p3name.value = pizzaName;
			form.p3count.value = p3Count;
			form.p3price.value = p3Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		}
		if (p3Count == 0) {
			form.p3name.value = "";
			form.p3count.value = "";
			form.p3price.value = "";
		}
		if (filedName == "d1" && d1Count > 0) {
			
			d1Count--;
			form.d1name.value = pizzaName;
			form.d1count.value = d1Count;
			form.d1price.value = d1Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		}
		if (d1Count == 0) {
			form.d1name.value = "";
			form.d1count.value = "";
			form.d1price.value = "";
		}
		if (filedName == "d2" && d2Count > 0) {
			
			d2Count--;
			form.d2name.value = pizzaName;
			form.d2count.value = d2Count;
			form.d2price.value = d2Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		}
		if (d2Count == 0) {
			form.d2name.value = "";
			form.d2count.value = "";
			form.d2price.value = "";
		}
		if (filedName == "d3" && d3Count > 0) {
			
			d3Count--;
			form.d3name.value = pizzaName;
			form.d3count.value = d3Count;
			form.d3price.value = d3Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		}
		if (d3Count == 0) {
			form.d3name.value = "";
			form.d3count.value = "";
			form.d3price.value = "";
		}
		if (filedName == "b1" && b1Count > 0) {
			
			b1Count--;
			form.b1name.value = pizzaName;
			form.b1count.value = b1Count;
			form.b1price.value = b1Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		}
		if (b1Count == 0) {
			form.b1name.value = "";
			form.b1count.value = "";
			form.b1price.value = "";
		}
		if (filedName == "b2" && b2Count > 0) {
			
			b2Count--;
			form.b2name.value = pizzaName;
			form.b2count.value = b2Count;
			form.b2price.value = b2Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		}
		if (b2Count == 0) {
			form.b2name.value = "";
			form.b2count.value = "";
			form.b2price.value = "";
		}
		if (filedName == "b3" && b3Count > 0) {
			
			b3Count--;
			form.b3name.value = pizzaName;
			form.b3count.value = b3Count;
			form.b3price.value = b3Count * pizzaPrice;
			sum=Number(form.p1price.value)+Number(form.p2price.value)+Number(form.p3price.value)+Number(form.d1price.value)+Number(form.d2price.value)+Number(form.d3price.value)+Number(form.b1price.value)+Number(form.b2price.value)+Number(form.b3price.value);
			form.sum.value=sum;
		}
		if (b3Count == 0) {
			form.b3name.value = "";
			form.b3count.value = "";
			form.b3price.value = "";
		}
	}
function sumPro(form) {

}
</script>
</head>
<body>
<br>
<jsp:include page="top.jsp"/>
<br>
<jsp:include page="login.jsp"/>
<br>
	<form name="form" action="confirmOrder.jsp" method="post">
		<table border="1" align="center" cellspacing="0" cellpadding="3">
			<tr>
				<td colspan="3" align="center">메뉴</td>
				<td colspan="5" align="center" width="150">주문내역</td>
			</tr>
			<tr>
				<td rowspan="3" align="center"><img src="./img/or1.jpg"><br>리얼바비큐/22,500원<input
					type="button" value="담기"
					onclick="addMenu(this.form, '리얼바비큐',22500,'p1')"></td>
				<td rowspan="3" align="center"><img src="./img/or2.jpg"><br>포테이토/17,500원<input
					type="button" value="담기"
					onclick="addMenu(this.form,'포테이토',17500,'p2')"></td>
				<td rowspan="3" align="center"><img src="./img/or6.jpg"
					onclick=""><br>불고기/17,500원<input type="button"
					value="담기" onclick="addMenu(this.form, '불고기',17500,'p3')"></td>
				<td align="center"><input type="text" name="p1name" size="7"></td>
				<td align="center"><input type="text" name="p1count" size="7"></td>
				<td align="center"><input type="text" name="p1price" size="7"></td>
				<td align="center"><input type="button" value="+"
					onclick="addMenu(this.form, '리얼바비큐',22500,'p1')"></td>
				<td align="center"><input type="button" value="-"
					onclick="subMenu(this.form, '리얼바비큐',22500,'p1')"></td>
			</tr>
			<tr>
				<td align="center"><input type="text" name="p2name" size="7"></td>
				<td align="center"><input type="text" name="p2count" size="7"></td>
				<td align="center"><input type="text" name="p2price" size="7"></td>
				<td align="center"><input type="button" value="+"
					onclick="addMenu(this.form, '포테이토',17500,'p2')"></td>
				<td align="center"><input type="button" value="-"
					onclick="subMenu(this.form, '포테이토',17500,'p2')"></td>
			</tr>
			<tr>
				<td align="center"><input type="text" name="p3name" size="7"></td>
				<td align="center"><input type="text" name="p3count" size="7"></td>
				<td align="center"><input type="text" name="p3price" size="7"></td>
				<td align="center"><input type="button" value="+"
					onclick="addMenu(this.form, '불고기',17500,'p3')"></td>
				<td align="center"><input type="button" value="-"
					onclick="subMenu(this.form, '불고기',17500,'p3')"></td>
			</tr>
			<tr>
				<td rowspan="3" align="center"><img src="./img/ord1.jpg"><br>코코넛
					쉬림프/9,500원<input type="button" value="담기"
					onclick="addMenu(this.form, '코코넛 쉬림프',9500,'d1')"></td>
				<td rowspan="3" align="center"><img src="./img/ord2.jpg"><br>순살치킨/8,500원<input
					type="button" value="담기"
					onclick="addMenu(this.form, '순살치킨',8500,'d2')"></td>
				<td rowspan="3" align="center"><img src="./img/ord3.jpg"><br>코코넛
					크로켓/8,500원<input type="button" value="담기"
					onclick="addMenu(this.form, '코코넛 크로켓',8500,'d3')"></td>
				<td align="center"><input type="text" name="d1name" size="7"></td>
				<td align="center"><input type="text" name="d1count" size="7"></td>
				<td align="center"><input type="text" name="d1price" size="7"></td>
				<td align="center"><input type="button" value="+"
					onclick="addMenu(this.form, '코코넛 쉬림프',9500,'d1')"></td>
				<td align="center"><input type="button" value="-"
					onclick="subMenu(this.form, '코코넛 쉬림프',9500,'d1')"></td>
			</tr>
			<tr>
				<td align="center"><input type="text" name="d2name" size="7"></td>
				<td align="center"><input type="text" name="d2count" size="7"></td>
				<td align="center"><input type="text" name="d2price" size="7" onclick="sum"></td>
				<td align="center"><input type="button" value="+"
					onclick="addMenu(this.form, '순살치킨',8500,'d2')"></td>
				<td align="center"><input type="button" value="-"
					onclick="subMenu(this.form, '순살치킨',8500,'d2')"></td>
			</tr>
			<tr>
				<td align="center"><input type="text" name="d3name" size="7"></td>
				<td align="center"><input type="text" name="d3count" size="7"></td>
				<td align="center"><input type="text" name="d3price" size="7"></td>
				<td align="center"><input type="button" value="+"
					onclick="addMenu(this.form, '코코넛 크로켓',8500,'d3')"></td>
				<td align="center"><input type="button" value="-"
					onclick="subMenu(this.form, '코코넛 크로켓',8500,'d3')"></td>
			</tr>
			<tr>
				<td rowspan="3" align="center"><img src="./img/orb1.jpg"><br>콜라/1,500원<input
					type="button" value="담기"
					onclick="addMenu(this.form, '콜라',1500,'b1')"></td>
				<td rowspan="3" align="center"><img src="./img/orb2.jpg"><br>제로콜라/1,800원<input
					type="button" value="담기"
					onclick="addMenu(this.form, '제로콜라',1800,'b2')"></td>
				<td rowspan="3" align="center"><img src="./img/orb3.jpg"><br>스프라이트/1,800원<input
					type="button" value="담기"
					onclick="addMenu(this.form, '스프라이트',1800,'b3')"></td>
				<td align="center"><input type="text" name="b1name" size="7"></td>
				<td align="center"><input type="text" name="b1count" size="7"></td>
				<td align="center"><input type="text" name="b1price" size="7"></td>
				<td align="center"><input type="button" value="+"
					onclick="addMenu(this.form, '콜라',1500,'b1')"></td>
				<td align="center"><input type="button" value="-"
					onclick="subMenu(this.form, '콜라',1500,'b1')"></td>
			</tr>
			<tr>
				<td align="center"><input type="text" name="b2name" size="7"></td>
				<td align="center"><input type="text" name="b2count" size="7"></td>
				<td align="center"><input type="text" name="b2price" size="7"></td>
				<td align="center"><input type="button" value="+"
					onclick="addMenu(this.form, '제로콜라',1800,'b2')"></td>
				<td align="center"><input type="button" value="-"
					onclick="subMenu(this.form, '제로콜라',1800,'b2')"></td>
			</tr>
			<tr>
				<td align="center"><input type="text" name="b3name" size="7"></td>
				<td align="center"><input type="text" name="b3count" size="7"></td>
				<td align="center"><input type="text" name="b3price" size="7"></td>
				<td align="center"><input type="button" value="+"
					onclick="addMenu(this.form, '스프라이트',1800,'b3')"></td>
				<td align="center"><input type="button" value="-"
					onclick="subMenu(this.form, '스프라이트',1800,'b3')"></td>
			</tr>
			<tr>
				<td colspan="3" align="center">&nbsp;</td>
				<td colspan="3" align="center">총 금액 : <input type="text" name="sum" value="0" readonly="readonly"></td>
				<td colspan="2" align="center"><input type="submit"
					value="주문하기" width="150"></td>
			</tr>
		</table>
	</form>