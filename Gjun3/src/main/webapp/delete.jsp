<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Dao.porderDao"%>
 <%
    //接收自己網頁給的值(ID)
    String ID=request.getParameter("ID");
    //如果沒輸入刪除資料用queryAll()方法
    String show=new porderDao().queryAll();
    //如果輸入的不是null或非空字串就啟用deleteId()方法
    if(ID!=null && ID!="") 
    {
    	new porderDao().deleteId(Integer.parseInt(ID));
    }
    
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width=750 align=center>
	<tr bgcolor=#C07AB8>
	  <td align=center><jsp:include page="title.jsp"/>
		<tr bgcolor=#ecf0f2>
			<td height=400>
			
				<table width=600 align=center border=0>
					<tr>
						<td colspan=6 align=center>
						<h3>訂單資料刪除</h3>
						<!--  自己傳到自己的畫面-->
						<form action="delete.jsp" method="post">
						ID:
						<input type="text" name="ID" size=5>
						<input type="submit" value="ok">							
						
						</form>				
					
					
					<tr>
						<td colspan=6><hr>
					
					<tr>
						<td>ID<td>桌號<td>A餐<td>B餐<td>C餐<td>金額
					<tr>
						<td colspan=6><hr>
						
						<!--  如果沒輸入刪除資料用queryAll()方法,就調閱原本的資料-->
						 <%=new porderDao().queryAll() %>			
					<tr>
						<td colspan=6><hr>
					<tr>
						<td colspan=6 align=center>
						<a href="index.jsp">回首頁</a>
				</table>	
			
			
			
			<tr bgcolor=#C07AB8>
	  <td align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>