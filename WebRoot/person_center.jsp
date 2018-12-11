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
    
    <title>My JSP 'person_center.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="html/css/person.css"/>

  </head>
  
  <body>
		<div class="person_top">
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
									<a href="person_center.jsp">个人中心</a>
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
						<span>
						<a href="">热门推荐:</a> 
						<a href="bookShowServlet?bookId=1">生如夏花 </a>
						<a href="Book.html">人间滋味</a>
						<a href="Book.html">骆驼祥子</a>
						</span>
						<span>
						<a href="">新品推荐:</a> 
						<a href="Book.html">南极绝恋</a>
						<a href="Book.html">孤独梦想家</a>
						<a href="Book.html">孺子帝</a>
						</span>
					</div>
				</div>
				<div class="yh_right y">
					<span class="current-yh">
						<ul class="zjyd	y" style="margin-right: 40px;">
							<li><a href="">最近阅读</a></li>
							<li>
								<div class="zj-hidden">
									<div class="recent-book">
										<h5>02-25 15:28</h5>
										<ul>
											<li style="margin-left: 30px;">
												<a href="">《生如夏花》</a>
											</li>
											<li>
												<a href=""> 第一章:家庭</a>
											</li>
										</ul>
									</div>
									<div class="recent-book">
										<h5>02-22 16:48</h5>
										<ul>
											<li style="margin-left: 30px;">
												<a href="">《斗破苍穹》</a>
											</li>
											<li>
												<a href=""> 第十四章:完美传承</a>
											</li>
										</ul>
									</div>
									<div class="recent-book">
										<h5>02-10 13:40</h5>
										<ul>
											<li style="margin-left: 30px;">
												<a href="">《郁达夫散文经典:孤独是一朵莲花》</a>
											</li>
											<li>
												<a href=""> 第十二章:二十二年的旅行</a>
											</li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
						<a href=""><%=ub.getUsername() %></a>
						<a>&#124</a>
						<a href="dengru.jsp" style="color: color: rgb(0,0,255);">退出</a>
						<a href="">提醒&#40 0 &#41</a>
					</span>
				</div>
			</div>
		</div>
		<div class="person_center wp">
			<div class="person_center_z z">
				<div class="menu-header">用户中心</div>
				<ul class="personal-center-lmenu">
				    <li>
						<a href="javascript:void(0);" class="pc-menu-label">我的信息</a>
				        <div class="pc-sub-menu" style="height: 258px;">
				        	
				            <div class="sub-item">
				            	<a href="person.jsp" target="in">个人中心</a>
				            </div>
				            <div class="sub-item">
				                <a href="html/Bookcase.html" target="in">我的追书</a>
				            </div>
				            <div class="sub-item">
				                <a href="html/feeling.html" target="in">我的读后感</a>
				            </div>
				            <div class="sub-item">
				                <a href="html/Comment.html" target="in">我的评论</a>
				            </div>
				            <div class="sub-item">
				                <a href="Myinfo.jsp" target="in">我的资料</a>
				            </div>
				            <div class="sub-item">
				                <a href="filterpass.jsp" target="in">修改密码</a>
				            </div>
				        </div>
				    </li>
				    <li>
						<a href="javascript:void(0);" class="pc-menu-label">财务中心</a>
				        <div class="pc-sub-menu" style="height: 129px;">
				            <div class="sub-item">
				                <a href="html/recorder.html" target="in">充值记录</a>
				            </div>
				            <div class="sub-item">
				                <a href="html/buy.html" target="in">订阅记录</a>
				            </div>
				            <div class="sub-item">
				                <a href="html/pengchang.html" target="in">捧场记录</a>
				            </div>
				        </div>
				    </li>
				</ul>
			</div>
			
			<div class="person_center_y">
				<iframe src="Myinfo.jsp" width="100%" height="100%"  scrolling="no" name="in" frameborder="0"></iframe>
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
