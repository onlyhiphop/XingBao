<%@page import="com.xb.model.UserBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

UserBean ub=(UserBean)request.getSession().getAttribute("UserBean");

%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Myinfo.jsp' starting page</title>
    
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
    <body>
		<div class="right-header">我的信息</div>
		<form action="personShowServlet?type=1" method="get">
			<table border="0" cellspacing="0" cellpadding="0" class="myImformation">
			<tr>
				<td class="basic_z">
					<span>头像:</span>
				</td>
				<td class="photo_c">
					<img src="img/info_1.jpg"/>
					<div class="alter_photo">
						<a href="">修改头像</a>
					</div>
				</td>
				<td class="basic_y">
					<div class="tips">
						<p>(支持jpg，jpeg，gif，png格式图片）</p>
					</div>
					
				</td>
			</tr>
				<tr>
					<td class="basic_z">
						<span>会员昵称:</span>
					</td>
					<td class="basic_c">
						<input type="text" name="username" id="basic_c_txt" value="<%=ub.getUsername() %>"/>
					</td>
					<td class="basic_y"></td>
				</tr>
				<tr>
					<td class="basic_z">
						<span>会员ID:</span>
					</td>
					<td class="basic_c">
						<input type="text" name="userId" id="basic_c_txt" value="<%=ub.getUserId() %>"/>
					</td>
					<td class="basic_y"></td>
				</tr>
				<tr>
					<td class="basic_z">
						<span>性别:</span>
					</td>
					<td class="basic_c_sex">
						<input type="radio" name="sex" id="sex_button" value="男" checked="checked"/>男
						<input type="radio" name="sex" id="sex_button" value="女" />女
					</td>
					<td class="basic_y"></td>
				</tr>
				<tr>
					<td class="basic_z">
						<span>常用邮箱:</span>
					</td>
					<td class="basic_c">
						<input type="text" name="email" id="basic_c_txt" value="<%=ub.getEmail() %>"/>
					</td>
					<td class="basic_y"></td>
				</tr>
				<tr>
					<td class="basic_z">
						<span>常用QQ:</span>
					</td>
					<td class="basic_c">
						<input type="text" name="QQ" id="basic_c_txt" value="<%=ub.getQQ() %>"/>
					</td>
					<td class="basic_y"></td>
				</tr>
				<tr>
					<td class="basic_z">
						<span>联系电话:</span>
					</td>
					<td class="basic_c">
						<input type="text" name="iphone" id="basic_c_txt" value="<%=ub.getIphone() %>"/>
					</td>
					<td class="basic_y"></td>
				</tr>
			</table>
		<div class="tj-btn">
			<input type="submit" value="保&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;存"  class="Myinfo_save">
			<input type="reset" value="取&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;消" class="Myinfo_reset">
		</div>
		</form>
	</body>
  </body>
</html>
