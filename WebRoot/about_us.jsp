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
    
    <title>My JSP 'about_us.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="html/css/about_us.css"/>

  </head>
  
  <body>
		<div class="index_top">
			<div class="wp">
				<div class="logo z">
					<h1><a href=""><img src="img/logo.png" alt="星宝reading" /></a></h1>
					</div>
					<div class="gongneng">
						<ul>
							<li>
								<div class="guapai">
									<a href="dengru.jsp">首页</a>
								</div>
							</li>
							<li>
								<div class="guapai">
									<a href="library.jsp">书库</a>
								</div>
							</li>
							<li>
								<div class="guapai">
									<a href="paihang.jsp">排行榜</a>
								</div>
							</li>
							<li>
								<div class="guapai">
									<a href="IfDrServlet">个人中心</a>
								</div>
							</li>
							<li>
								<div class="guapai">
									<a href="about_us.jsp">关于我们</a>
								</div>
							</li>
						</ul>
					</div>
				<div class="index_bottom_search y">
					
					<form name="select" method="post" action="">
           				<input type="text" name="bookname" onfocus="if(this.value=='请输入关键字'){this.value=''}" onblur="if(this.value==''){this.value='请输入关键字';}" placeholder="找书、找作者">
			 			<button type="submit" class="search-btn" style="border:0px"></button>
					</form>	
       			</div>
			</div>
		</div>
		<div class="yonghu jz">
				<div class="yh_left z">
					<div id="remen-img">
						<img src="img/lab.png"/>
					</div>
					<div id="remen">
						<p><a href="">热门推荐:</a> 
						<a href="bookShowServlet?bookId=1">生如夏花 </a>
						<a href="bookShowServlet?bookId=1">人间滋味</a>
						<a href="bookShowServlet?bookId=1">骆驼祥子</a>
						</p>
						<p><a href="">新品推荐:</a> 
						<a href="bookShowServlet?bookId=1">南极绝恋</a>
						<a href="bookShowServlet?bookId=1">孤独梦想家</a>
						<a href="bookShowServlet?bookId=1">孺子帝</a></p>
					</div>
				</div>
				<div class="yh_right right">
				<%
					if(ub==null){
						%>
						<span>
							<a href=""><img src="img/qq.png"/></a>
							<a href=""><img src="img/weixin.png"/></a>
							<a href=""><img src="img/weibo.png"/></a>
						</span>
						<span id="yhdr">
							<a href="dengru.jsp">用户登录</a>
							<a>&#124</a>
							<a href="zhuce.jsp">注册</a>
						</span>
						<%
					}else{
					%>
						<span id="yhdr_jsp" class="yhdr">
						<a href="person_center.jsp"><%=ub.getUsername() %></a>
						<a>&#124</a>
						<a href="dengru.jsp" style="color: color: rgb(0,0,255);">退出</a>
					</span>
					<%
					}
				 %>
				</div>
			</div>
		<div class="about_us_center">
				<div class="about_us_title">
					<p>关于我们</p>
				</div>
				<div class="about_us_z">
					<p>星宝reading成立于2018年3月。</p>
					<p>网站专注于大众阅读性，面向广大爱好文学、爱好阅读的朋友。</p>
					<p>致力于解决目前国内书刊资源混杂的局面，精挑细选，时时更新，紧跟趋势，全心服务。</p>
					<p>网站有着大量丰富的图书种类，包括文学、小说、传记、成功与励志、历史等题材，内容多样化，满足用户的所有需求。</p>
				</div>
				<div class="about_us_contact">
					<p>客服工作时间：周一到周日 9:00-17:30</p>
					<p>电话：***********</p>
					<p>QQ：1253017164</p>
					<p>客服邮箱：125301164@qq.com</p>
				</div>
		</div>
		
		
		
		<div class="person_bottom wp">
			<div class="contact">
				<div class="contact_z z">
					<span>客服工作时间：周一到周日 9:00-17:30</span><br>
					<span>电话：***********</span><br>
					<span>QQ：1253017164</span><br>
					<span>客服邮箱：125301164@qq.com</span><br>
				</div>
				<div class="contact_y y">
					<span>文网文证件：浙网文[2013]0131-013</span><br>
					<span>ICP经营许可证编号：浙B2-20130252</span>
				</div>
			</div>
			
			<div class="copyright">
				<span>Copyright ©  2018 XinBaoreading.All Rights Reserved. Powered By 星宝reading</span>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		 var area = document.getElementById('remen');
		 var iliHeight = 30;//单行滚动的高度
		 var speed = 50;//滚动的速度
		 var time;
		 var delay= 3000;
		 area.scrollTop=0;
		 area.innerHTML+=area.innerHTML;//克隆一份一样的内容
		 function startScroll(){
			 time=setInterval("scrollUp()",speed);
			 area.scrollTop++;
			 }
		 function scrollUp(){
			 if(area.scrollTop % iliHeight==0){
				 clearInterval(time);
				 setTimeout(startScroll,delay);
				 }else{
					 area.scrollTop++;
					 if(area.scrollTop >= area.scrollHeight/2){
						 area.scrollTop =0;
						 }
					 }
			 }
			 setTimeout(startScroll,delay)
 </script>

</html>
