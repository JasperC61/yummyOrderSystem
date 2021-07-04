<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="Dao.porderDao"%>
 <%
 /*
   1.顯示全部資料內容--------> queryAll()
   2.button送出->查金額----> querySum(start,end)
     是否有傳送參數start,end值去判斷用queryAll()還是querySum(start,end)
  
 */
 
   //接收自己網頁給的值(金額)
   String Start=request.getParameter("start");
   String End=request.getParameter("end");
   // out.println(Start+" "+End);
 
 /*
  a.request沒打也會產生->null->預設
  b. 底下表單from也會產生 -->""(空字串)
 */
 
   //判斷用queryAll()還是querySum()方法
   String show=new porderDao().queryAll();
   //如果輸入的有start及end金額或非空字串就啟用querySum()方法
   if(Start!=null && Start!="" && End!=null && End!="") 
	   {
	   //由字串轉型成整數並顯示出來
	   show=new  porderDao().querySum(Integer.parseInt(Start), Integer.parseInt(End));
	   }
 %>    
     
     
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table width=750 align=center>
	<tr bgcolor=#C07AB8>
	  <td align=center><jsp:include page="title.jsp"/>
	<tr bgcolor=#F3F3FA>
	  <td height=400>
       
           <table width=600 align=center border=0>
               <tr>
                 <td colspan=6 align=center>
                 <h3>訂單資料查詢</h3>
                 <!-- 自己接到自己的頁面 -->
                 <form action="query.jsp"  method="post">
                 金額:從<input type="text" name="start"  size=5>
                 到<input type="text" name="end" size=5 >
                 <!-- ok送出後需判斷用 queryAll()  還是 querySum(start,end)-->
                 <input type="submit" value="ok">
                 
                 </form>
                 
               <tr>
                 <td colspan=6><hr>
               <tr>
                 <td>ID<td>桌號<td>A餐<td>B餐<td>C餐<td>金額
               <tr>
                 <td colspan=6><hr>
                 
                 <!--引入Dao.porderDao().queryAll()方法-->
                 <%//=new porderDao().queryAll() %>
                 <!-- 接收用queryAll()或還是querySum()方法顯示它的內容值 -->
                 <%=show %>
               <tr>
                 <td colspan=6><hr>
               <tr>
                 <td colspan=6  align=center>
                 <a href="index.jsp">回首頁</a>
           </table>
         
     
						
		<tr bgcolor=#C07AB8>
	  <td align=center><jsp:include page="end.jsp"/>
	
	</table>

</body>
</html>