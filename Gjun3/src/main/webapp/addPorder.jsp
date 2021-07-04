<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<tr bgcolor=#F3F3FA>
	  <td height=400>
	    <form action="confirm.jsp" method="post">
	         <table width=650 align=center border=0>
	         <tr>
	             <td colspan=3>
	             桌號:
	             <select name="desk">
	                <option values="A01">A01
	                <option values="A02">A02
	                <option values="B01">B01
	                <option values="B02">B02
	                <option values="C01">C01
	                <option values="C02">C02
	                
	             </select>
	         <tr>
	             <td colspan=3>
	             <hr>
	         <tr>
	             <td valign=top align=center>
	             <img alt="" src="pic/1.jpg"><br>$120 /per Set
	             
	             <td valign=top align=center>
	             <img alt="" src="pic/2.jpg"><br>$130 /per Set
	             
	             <td valign=top align=center>
	             <img alt="" src="pic/3.jpg"><br>$140 /per Set
	        
	         <tr>
	            <td colspan=3>
	            <hr>
	         <tr>
	             <td>A餐數量
	              <select name="A">
	                <option values="1">1
	                <option values="2">2
	                <option values="3">3
	                <option values="4">4
	                <option values="5">5
	                <option values="6">6
	                <option values="7">7
	                <option values="8">8
	                <option values="9">9
	                <option values="0">0
	                
	             </select> 
	             <td>B餐數量
	             <select name="B">
	                <option values="1">1
	                <option values="2">2
	                <option values="3">3
	                <option values="4">4
	                <option values="5">5
	                <option values="6">6
	                <option values="7">7
	                <option values="8">8
	                <option values="9">9
	                <option values="0">0
	             </select>
	             <td>C餐數量
	             <select name="C">
	                <option values="1">1
	                <option values="2">2
	                <option values="3">3
	                <option values="4">4
	                <option values="5">5
	                <option values="6">6
	                <option values="7">7
	                <option values="8">8
	                <option values="9">9
	                <option values="0">0
	             </select>
	         <tr>
	             <td colspan=3>
	             <hr>
	         <tr>
	             <td colspan=3 align=center>
	             <input type="submit" value="ok">
	             <input type="reset" value="重設">
	         </table>
	    
	    </form>
	<tr bgcolor=#C07AB8>
	  <td align=center><jsp:include page="end.jsp"/>
	
	
	
	
	</table>
</body>
</html>