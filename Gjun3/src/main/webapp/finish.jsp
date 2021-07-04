<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Dao.porderDao"
    import="Model.porder"
   
    
    %>
    
 <%
    /*
    1.顯示訂單建檔完成
    2.顯示訂單全部細目--->報表畫面
    3.列印
    */
    //此處用httpServlet.getAttribute方法去串接
   // out.println(session.getAttribute("P"));
   //將confirm.jsp那頁的session.setAttribute("P", p),資料接收過來,但是他的用session接收下來是object故需要轉型成porder
   porder p=(porder)session.getAttribute("P"); 
   //透過Dao.porderDao中 add()方法將confirm.jsp 中(porder p=new porder(Desk,A,B,C); )p的資料放入
  //  new porderDao().add(p);
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function varitext(text){
text=document
print(text)
}
//  End -->
</script>

</head>
<body>
	<table width=750 align=center>
	<tr bgcolor=#C07AB8>
	  <td align=center><jsp:include page="title.jsp"/>
	<tr bgcolor=#F3F3FA>
	  <td height=400>
	<table width=500 align=center border=0>
				<tr>
					<td colspan=2 align=center>
					
					<h3>建檔完成</h3>
				<tr>
					<td colspan=2>
					<hr>
				<tr>
					<td width=100>桌號
					<td align=center><%=p.getDesk() %>
				<tr>
					<td>A餐
					<td align=center><%=p.getA() %>
				<tr>
					<td>B餐
					<td align=center><%=p.getB() %>
				<tr>
					<td>C餐
					<td align=center><%=p.getC() %>
				<tr>
					<td colspan=2>
					<hr>
				<tr>
					<tr>
					<td colsapn=2 align=center>
					共:<%=p.getSum() %>元
			   <tr>
			  
			     <td colspan=2>
			     <hr>
			     
			   <tr>
			     <td align=center>
			     <a href="index.jsp">回首頁</a>
			     <td  align=center>
			     <DIV ALIGN="CENTER">
               <FORM>
                <INPUT NAME="print" TYPE="button" VALUE="列印此頁"ONCLICK="varitext()">
              </FORM>
                </DIV>
			     
			     
			</table>
	<tr>
	  <td>
	<tr bgcolor=#C07AB8>
	  <td align=center><jsp:include page="end.jsp"/>
	
	
	
	
	</table>
</body>
</html>