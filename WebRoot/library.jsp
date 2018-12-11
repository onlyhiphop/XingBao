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
    
    <title>My JSP 'library.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="html/css/library_style.css"/>
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
						<a href="bookShowServlet?bookId=6">人间滋味</a>
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
		<div class="index_zhong jz">
			<div class="zhong_top jz">
				<div class="z_tittle jz">
					<h1><img src="img/library_bookall.png" alt=""/>书库</h1>
				</div>
				<div class="z_caidan jz">
					<ul class="z_first">
						<li class="b">
							书籍分类: 
						</li>
						<li class="a">
							<a href="index.html">不限</a>
						</li>
						<li class="drop-down">
							<a href="">文学</a>
								<ul class="drop-down-content">
									<li><a href="">作品集</a></li>
									<li><a href="">散文随笔</a></li>
									<li><a href="">文学鉴赏</a></li>
									<li><a href="">诗歌词曲</a></li>
									<li><a href="">名家作品</a></li>
									<li><a href="">纪实文学</a></li>
									<br />
									<li><a href="">文学史</a></li>
									<li><a href="">民间文学</a></li>
									<li><a href="">文学理论</a></li>
									<li><a href="">戏剧曲艺</a></li>
									<li><a href="">影视文学</a></li>
									<li><a href="">期刊杂志</a>
									</li>
								</ul>
						</li>
						<li class="drop-down">
							<a href="">小说</a>
								<ul class="drop-down-content">
									<li><a href="">悬疑</a></li>
									<li><a href="">奇幻</a></li>
									<li><a href="">军史</a></li>
									<li><a href="">言情</a></li>
									<li><a href="">玄幻</a></li>
									<li><a href="">	世界名著</a></li>
									<br />
									<li><a href="">中国古典</a></li>
									<li><a href="">科幻</a></li>
									<li><a href="">校园</a></li>
									<li><a href="">仙侠</a></li>
									<li><a href="">恐怖</a></li>
									<li><a href="">侦探</a></li>
									</li>
								</ul>
						</li>
						<li class="drop-down">
							<a href="">传记</a>
								<ul class="drop-down-content">
									<li><a href="">宗教人物</a></li>
									<li><a href="">政治人物</a></li>
									<li><a href="">军事人物</a></li>
									<li><a href="">艺术家</a></li>
									<li><a href="">科学家</a></li>
									<br />
									<li><a href="">文学家</a></li>
									<li><a href="">领袖首脑</a></li>
									<li><a href="">历代帝王</a></li>
									<li><a href="">体育明星</a></li>
									<li><a href="">娱乐明星</a></li>
									</li>
								</ul>
						</li>
						<li class="drop-down">
							<a href="">成功与励志</a>
								<ul class="drop-down-content">
									<li><a href="">为人处世</a></li>
									<li><a href="">个人修养</a></li>
									<li><a href="">心灵读物</a></li>
									<li><a href="">创业必修</a></li>
									<li><a href="">求职面试</a></li>
									<br />
									<li><a href="">名人励志</a></li>
									<li><a href="">名言格言</a></li>
									<li><a href="">人际与社交</a></li>
									<li><a href="">文明礼仪</a></li>
									<li><a href="">成功学</a></li>
									</li>
								</ul>
						</li>
						<li class="drop-down">
							<a href="">历史</a>
								<ul class="drop-down-content">
									<li><a href="">中国史</a></li>
									<li><a href="">亚洲史</a></li>
									<li><a href="">美洲史</a></li>
									<li><a href="">非洲史</a></li>
									<li><a href="">大洋洲史</a></li>
									<br />
									<li><a href="">欧洲史</a></li>
									<li><a href="">世界总史</a></li>
									<li><a href="">文化史</a></li>
									<li><a href="">风俗习惯</a></li>
									<li><a href="">文物考古</a></li>
									</li>
								</ul>
						</li>
					</ul>
					<ul class="z_first">
						<li class="b">排序方式:</li>
						<li class="a"><a href="">不限</a></li>
						<li><a href="">收藏最多</a></li>
						<li><a href="">评分最高</a></li>
						<li><a href="">销量最多</a></li>
						<li><a href="">评论最多</a></li>
						<li><a href="">综合排名</a></li>
					</ul>
					<ul class="z_first">
						<li class="b">是否免费：</li>
						<li class="a"><a href="">不限</a></li>
						<li><a href="">免费作品</a></li>
						<li><a href="">收费作品</a></li>
					</ul>
					<ul class="z_first">
						<li class="b">是否完结：</li>
						<li class="a"><a href="">不限</a></li>
						<li><a href="">完结</a></li>
						<li><a href="">连载</a></li>
					</ul>
					<ul class="z_first">
						<li class="b">作品字数：</li>
						<li class="a"><a href="">不限</a></li>
						<li><a href="">10万以下</a></li>
						<li><a href="">10万-50万</a></li>
						<li><a href="">50万-100万</a></li>
						<li><a href="">100万以上</a></li>
					</ul>
				</div>
			</div>
			
			<div class="zhong_bottom jz">
				<div class="z_b_left left">
					<div class="l_top">
						
					<table border="1">
						<tr class="table_head">
							<td width="45px" height="45px">序号</td>
							<td width="205px">书籍名称</td>
							<td width="110px">作者</td>
							<td width="110px">字数</td>
							<td width="110px">点击量</td>
							<td width="110px">出版时间</td>
							<td>具体操作</td>
						</tr>
						<tr>
							<td class="no">1</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="bookShowServlet?bookId=1">查看</a></td>
						</tr>
						<tr>
							<td class="no">2</td>
							<td class="book_name"><a href="">刺杀骑士团长</a></td>
							<td class="author"><a href="">村上春树</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="bookShowServlet?bookId=2">查看</a></td>
						</tr>
						<tr>
							<td class="no">3</td>
							<td class="book_name"><a href="">原则</a></td>
							<td class="author"><a href="">瑞.达利欧</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="bookShowServlet?bookId=3">查看</a></td>
						</tr>
						<tr>
							<td class="no">4</td>
							<td class="book_name"><a href="">房思祺的初恋乐园</a></td>
							<td class="author"><a href="">林奕含</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="bookShowServlet?bookId=4">查看</a></td>
						</tr>
						<tr>
							<td class="no">5</td>
							<td class="book_name"><a href="">见识</a></td>
							<td class="author"><a href="">吴军</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="bookShowServlet?bookId=5">查看</a></td>
						</tr>
						<tr>
							<td class="no">6</td>
							<td class="book_name"><a href="">人间滋味</a></td>
							<td class="author"><a href="">汪曾祺</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="bookShowServlet?bookId=6">查看</a></td>
						</tr>
						<tr>
							<td class="no">7</td>
							<td class="book_name"><a href="">鱼河岸小店</a></td>
							<td class="author"><a href="">西加奈子</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="bookShowServlet?bookId=7">查看</a></td>
						</tr>
						<tr>
							<td class="no">8</td>
							<td class="book_name"><a href="">飞鸟集·新月集</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="bookShowServlet?bookId=8">查看</a></td>
						</tr>
						<tr>
							<td class="no">9</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">10</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">11</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">12</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">13</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">14</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">15</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">16</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">17</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">18</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">19</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
						<tr>
							<td class="no">20</td>
							<td class="book_name"><a href="">生如夏花:泰戈尔经典诗选</a></td>
							<td class="author"><a href="">泰戈尔</a></td>
							<td class="words">50万-100万</td>
							<td class="number">1000000</td>
							<td class="time">2010/2/19</td>
							<td class="look"><a href="">查看</a></td>
						</tr>
					</table>
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
				<div class="z_b_right left">
					<div class="jx-tuijian">
						<div class="jx-head">
							<div class="jx-img left">
								<img src="img/library_bookall.png"/>
							</div>
							<p>精选书籍</p>
						</div>
						<div class="content" id="content">
									
							<ul>
								<li>
								<div class="top_paiming_normal top1 top_paiming_normal1">
										<span>1</span>
										<p>生如夏花</p>
									</div>
									<div class="top_paiming_hover top_paiming_hover1">
										<div class="top_paiming_hover_left">
											<span class="hover_top1">TOP1</span>
											<h4><a href="bookShowServlet?bookId=1">生如夏花</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="bookShowServlet?bookId=1"><img src="img/book1.png"/></a></h3>
										</div>
									</div>
							</li>
								<li>
									<div class="top_paiming_normal top2">
										<span>2</span>
										<p>人间滋味</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top2">TOP2</span>
											<h4><a href="bookShowServlet?bookId=6">人间滋味</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="bookShowServlet?bookId=6"><img src="img/book2.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top3">
										<span>3</span>
										<p>鱼河岸小店</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top3">TOP3</span>
											<h4><a href="bookShowServlet?bookId=7">鱼河岸小店</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="bookShowServlet?bookId=7"><img src="img/book3.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>4</span>
										<p>飞鸟集-新月集</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP4</span>
											<h4><a href="bookShowServlet?bookId=8">飞鸟集-新月集</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="bookShowServlet?bookId=8"><img src="img/book4.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>5</span>
										<p>原则</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP5</span>
											<h4><a href="bookShowServlet?bookId=3">原则</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="bookShowServlet?bookId=3"><img src="img/book5.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>6</span>
										<p>刺杀骑士团长</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP6</span>
											<h4><a href="bookShowServlet?bookId=2">刺杀骑士团长</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="bookShowServlet?bookId=2"><img src="img/book6.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>7</span>
										<p>房思祺的初恋乐园</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP7</span>
											<h4><a href="bookShowServlet?bookId=4">房思祺的初恋乐园</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="bookShowServlet?bookId=4"><img src="img/book7.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>8</span>
										<p>见识</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP8</span>
											<h4><a href="#">见识</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book8.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>9</span>
										<p>生如夏花</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP9</span>
											<h4><a href="#">生如夏花</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book1.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>10</span>
										<p>人间滋味</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP10</span>
											<h4><a href="#">人间滋味</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book2.png"/></a></h3>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="more">
							<a href="">更多&gt;&gt;</a>
						</div>
					</div>
					
						<div class="jx-tuijian">
						<div class="jx-head">
							<div class="jx-img left">
								<img src="img/library_bookall.png"/>
							</div>
							人气榜
						</div>
						<div class="content" id="content">
							<ul>
								<li>
									<div class="top_paiming_normal top1 top_paiming_normal1">
										<span>1</span>
										<p>生如夏花</p>
									</div>
									<div class="top_paiming_hover top_paiming_hover1">
										<div class="top_paiming_hover_left">
											<span class="hover_top1">TOP1</span>
											<h4><a href="#">生如夏花</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book1.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top2">
										<span>2</span>
										<p>人间滋味</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top2">TOP2</span>
											<h4><a href="#">人间滋味</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book2.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top3">
										<span>3</span>
										<p>鱼河岸小店</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top3">TOP3</span>
											<h4><a href="#">鱼河岸小店</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book3.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>4</span>
										<p>飞鸟集-新月集</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP4</span>
											<h4><a href="#">飞鸟集-新月集</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book4.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>5</span>
										<p>原则</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP5</span>
											<h4><a href="#">原则</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book5.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>6</span>
										<p>刺杀骑士团长</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP6</span>
											<h4><a href="#">刺杀骑士团长</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book6.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>7</span>
										<p>房思祺的初恋乐园</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP7</span>
											<h4><a href="#">房思祺的初恋乐园</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book7.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>8</span>
										<p>见识</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP8</span>
											<h4><a href="#">见识</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book8.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>9</span>
										<p>生如夏花</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP9</span>
											<h4><a href="#">生如夏花</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book1.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>10</span>
										<p>人间滋味</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP10</span>
											<h4><a href="#">人间滋味</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book2.png"/></a></h3>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="more">
							<a href="">更多&gt;&gt;</a>
						</div>
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
</html>
