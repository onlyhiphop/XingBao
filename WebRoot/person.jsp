<%@page import="com.xb.model.UserBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

UserBean ub=(UserBean)request.getSession().getAttribute("UserBean");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'person.jsp' starting page</title>
    
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
		<div class="right-header">个人中心</div>
		<div class="basic-infor clearfix">
            <div class="touxiang"> 
                <a href="/Personal/Portrait/index.html"><img src="img/info_1.jpg" class="" alt="修改头像" title="修改头像"></a>
            </div>
            <div class="infor-right">
                <h3 class="name clearfix"><span class="fl"><%=ub.getUsername() %>(ID：<%=ub.getUserId() %>)</span></h3>
                <p class="p-content">账户余额：<span style="color:#ff3434"><%=ub.getYuer() %></span>阅币
                	<a href="/Personal/Account/index.html" style="margin-left: 20px;margin-right: 20px;">我要充值</a>
                                        优惠券：<span style="color:#ff3434"><%=ub.getYouhui() %></span>张
                    <span style="margin-left: 50px;"></span>
                </p>
            </div>
		</div>
		<div class="per_center">
			<div class="book-header clearfix">
                <span class="fl">我的追书</span>
                <a href="Bookcase.html" class="fr">查看全部追书&gt;&gt;</a>
            </div>
            <ul class="book-ul clearfix">
				<li style=" margin-left:0px; margin-right:46px; margin-bottom: 10px;">
                	<a href="/books/1260.html">
               		<img src="img/book1.png"/>
                	<h4>生如夏花</h4>
                	<p>作者：泰戈尔</p>
                	</a>
                </li>
                <li style=" margin-left:0px; margin-right:46px; margin-bottom: 10px;">
                	<a href="/books/2845.html">
                	<img src="img/book2.png"/>
                	<h4>人间滋味</h4>
                	<p>作者：汪曾祺</p>
                	</a>
                </li>
                <li style=" margin-left:0px; margin-right:46px; margin-bottom: 10px;">
                	<a href="/books/1042.html">
                	<img src="img/book3.png"/>
                	<h4>鱼河岸的小店</h4>
                	<p>作者：西加奈子</p>
               		</a>
                </li>
            </ul>
                
		</div>
		<div class="per_bottom">
			<div class="book-header clearfix">
            	<span class="fl">我的评论</span>
                <a href="Comment.html" class="fr">查看全部评论&gt;&gt;</a>
        	</div>
		</div>
	</body>
</html>
