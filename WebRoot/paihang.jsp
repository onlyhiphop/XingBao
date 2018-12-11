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
    
    <title>My JSP 'paihang.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="html/css/paihang.css"/>
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
			
					<div class="ph wp">
			<div class="ph-kind left">
				<div class="ph-head">
					<p>详细排行</p>
				</div>
				<div class="ph-foot">
					<ul>
						<li><a href="">畅销排行榜</a></li>
						<li><a href="">人气排行榜</a></li>
						<li><a href="">新品排行榜</a></li>
						<li><a href="">追书排行榜</a></li>
						<li><a href="">收藏排行榜</a></li>
						<li><a href="">评分排行榜</a></li>
					</ul>
				</div>
			</div>
			<div class="ph-content right">
				<div class="ph-t">
					<p>新品排行榜</p>
				</div>
				<div class="ph-book">
					<div class="ph-book-left left">
						<div class="ph-tupian left">
							<a href=""><img src="img/yuanze.png"/></a>
						</div>
						<div class="ph-word left">
							<b>1.</b>
							<p><a href="">原则(简体中文版)</a></p>
							<p>瑞·达利欧</p>
							<p><img src="img/five.png"/></p>
							<p style="color:#ff3434	 ;">65阅币</p>
							<p style="color: #090;">发行时间: 2017年12月29日</p>
						</div>
					</div>
					<div class="ph-book-right right">
						<div class="ph-tupian left">
							<a href=""><img src="img/cisha.png"/></a>
						</div>
						<div class="ph-word left">
							<b>2.</b>
							<p><a href="">刺杀骑士团长</a></p>
							<p>村上春树</p>
							<p><img src="img/five.png"/></p>
							<p style="color:#ff3434	 ;">76阅币</p>
							<p style="color: #090;">发行时间: 2018年3月7日</p>
						</div>
					</div>
				</div>
				<div class="ph-book">
					<div class="ph-book-left left">
						<div class="ph-tupian left">
							<a href=""><img src="img/jianshi.png"/></a>
						</div>
						<div class="ph-word left">
							<b>3.</b>
							<p><a href="">见识</a></p>
							<p>吴军</p>
							<p><img src="img/fourhalf.png"/></p>
							<p style="color:#ff3434	 ;">33阅币</p>
							<p style="color: #090;">发行时间: 2017年2月8日</p>
						</div>
					</div>
					<div class="ph-book-right right">
						<div class="ph-tupian left">
							<a href=""><img src="img/jiyin.png"/></a>
						</div>
						<div class="ph-word left">
							<b>4.</b>
							<p><a href="">见识丛书·基因传</a></p>
							<p>悉达多•穆克吉</p>
							<p><img src="img/fourhalf.png"/></p>
							<p style="color:#ff3434	 ;">60阅币</p>
							<p style="color: #090;">发行时间: 2017年12月20日</p>
						</div>
					</div>
				</div>
				<div class="ph-book">
					<div class="ph-book-left left">
						<div class="ph-tupian left">
							<a href=""><img src="img/zhir.png"/></a>
						</div>
						<div class="ph-word left">
							<b>5.</b>
							<p><a href="">知日·世上只有一个京都!</a></p>
							<p>茶乌龙</p>
							<p><img src="img/fourhalf.png"/></p>
							<p style="color:#ff3434	 ;">40阅币</p>
							<p style="color: #090;">发行时间: 2018年2月5日</p>
						</div>
					</div>
					<div class="ph-book-right right">
						<div class="ph-tupian left">
							<a href=""><img src="img/fangsiqi.png"/></a>
						</div>
						<div class="ph-word left">
							<b>6.</b>
							<p><a href="">房思琪的初恋乐园</a></p>
							<p>林奕含</p>
							<p><img src="img/fourhalf.png"/></p>
							<p style="color:#ff3434	 ;">27阅币</p>
							<p style="color: #090;">发行时间: 2018年1月25日</p>
						</div>
					</div>
				</div>
				<div class="ph-book">
					<div class="ph-book-left left">
						<div class="ph-tupian left">
							<a href=""><img src="img/gaonandu.png"/></a>
						</div>
						<div class="ph-word left">
							<b>7.</b>
							<p><a href="">高难度沟通:麻省理工高人气沟通课</a></p>
							<p>贾森·杰伊</p>
							<p><img src="img/threehalf.png"/></p>
							<p style="color:#ff3434	 ;">27阅币</p>
							<p style="color: #090;">发行时间: 2018年1月16日</p>
						</div>
					</div>
					<div class="ph-book-right right">
						<div class="ph-tupian left">
							<a href=""><img src="img/pugongyin.png"/></a>
						</div>
						<div class="ph-word left">
							<b>8.</b>
							<p><a href="">蒲公英王朝:七王之战</a></p>
							<p>刘宇昆 (Ken Liu</p>
							<p><img src="img/threehalf.png"/></p>
							<p style="color:#ff3434	 ;">30阅币</p>
							<p style="color: #090;">发行时间: 2018年2月7日</p>
						</div>
					</div>
				</div>
				<div class="ph-book">
					<div class="ph-book-left left">
						<div class="ph-tupian left">
							<a href=""><img src="img/python.png"/></a>
						</div>
						<div class="ph-word left">
							<b>9.</b>
							<p><a href="">Python编程:从入门到实践</a></p>
							<p>[美]埃里克·马瑟斯</p>
							<p><img src="img/fourhalf.png"/></p>
							<p style="color:#ff3434	 ;">70阅币</p>
							<p style="color: #090;">发行时间: 2018年1月26日</p>
						</div>
					</div>
					<div class="ph-book-right right">
						<div class="ph-tupian left">
							<a href=""><img src="img/kaoyan.png"/></a>
						</div>
						<div class="ph-word left">
							<b>10.</b>
							<p><a href="">新东方:考研英语词汇识记与应用大全</a></p>
							<p>朱伟</p>
							<p><img src="img/three.png"/></p>
							<p style="color:#ff3434	 ;">34阅币</p>
							<p style="color: #090;">发行时间: 2018年1月10日</p>
						</div>
					</div>
				</div>
				
				<div class="l_foot">
				<div class="page">
					<span class="page-prev">&lt;</span>
					<span class="page-current">1</span>
					<a href="">2</a>
					<a href="">3</a>
					<a href="">4</a>
					...
					<a href="">36</a>
					<a href="">37</a>
					<a href="">&gt;</a>
				</div>
			</div>
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
  </body>
</html>
