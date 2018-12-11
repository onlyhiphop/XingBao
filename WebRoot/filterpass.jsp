<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'filterpass.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="html/css/person_iframe.css"/>
  </head>
  
  <body>
		<div class="right-header">修改密码</div>
		<form action="UpPassWordServlet" method="get">
		<table border="0" cellspacing="0" cellpadding="0" class="filter">
			<tr>
				<td class="password_z">
					<span>原始密码:</span>
				</td>
				<td class="password_y">
					<input type="password" name="password_y" id="password_y_txt" value=""/>
				</td>
			</tr>
			<tr>
				<td class="password_z">
					<span>新密码:</span>
				</td>
				<td class="password_y">
					<input type="password" name="password_x" id="password_y_txt" value=""/>
				</td>
			</tr>
			<tr>
				<td class="password_z">
					<span>确认新密码:</span>
				</td>
				<td class="password_y">
					<input type="password" name="password_y_txt" id="password_y_txt" value=""/>
				</td>
			</tr>
		</table>
		<p class="filter_save"><input type="submit" value="保&nbsp;&nbsp;&nbsp;存"><p>
		</form>
		
	</body>
</html>
