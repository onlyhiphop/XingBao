<%@page import="com.xb.model.UserBean"%>
<%@page import="com.xb.model.BookCl"%>
<%@page import="com.xb.model.BookBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

BookBean bookBean=(BookBean)request.getAttribute("bookBean");
String jianjie=(String)request.getAttribute("jianjie");

UserBean ub=(UserBean)request.getSession().getAttribute("UserBean");
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'book.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="html/css/Book_style.css"/>
	<script src="html/js/Book.js" type="text/javascript" charset="utf-8"></script>
	<script src="html/js/paihang.js" type="text/javascript" charset="utf-8"></script>

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
		<div class="wp">
			<div class="book_detail_main">
				<div class="book_detail_left z">
					<div class="book_detail_left_one">
						<div class="one1">
							<div class="one1_left">
								<img class="bookImg" src="img/<%=bookBean.getPhoto()  %>"/>
							</div>
							<div class="one1_right">
								<div class="book-index-info">
									<div class="user z">
										<b class="book-name z"><%=bookBean.getBookname() %></b>
										<p class="z">
											<span><%=bookBean.getAuthor() %>></span>&nbsp;著</p>
									</div>
									<div class="options y">
											<a data-cmd="more" class="aa bb share" title="分享本书">分享</a>
									</div>
								</div>
								<div class="book-index-hot">
									<p class="z"><b><%=bookBean.getWordcount() %></b>万字</p>
									<p class="z"><b><%=bookBean.getRenqi() %></b>万人气</p>
									<p class="z"><b><%=bookBean.getShumi() %></b>书迷</p>
								</div>
								<div class="jianjie z">
									 <%=jianjie  %>
								</div>
								<div class="book-recomment y">
									<p class="bot-lable">推	荐	票</p>
									<p><%=bookBean.getVotes() %></p>
									<p class="bot-lable">鲜花</p>
									<p><%=bookBean.getFlower() %></p>
								</div>
							</div>
						</div>
						<div class="one2">
							<ul>
								<li>
									<div>
										<a href="">
											<!--
 											<img src="img/ml.png" alt="" class="img1">
                                            -->
											<img src="img/ml2.png" alt="" class="img2 img-dis"> 目录
										</a>
									</div>
								</li>
								<li class="book-detail-shelf">
									<div class="pr">
										<img src="img/book_index_add.png" alt="" class="img1 img-dis" style="display: inline;">
										<!-- <img src="img/book_index_reduce.png" alt="" class="img2" style="display: none;">-->	
										<span>加入书架</span>
									</div>
								</li>
								<li class="dy">
									<div>
										<a href="javascript:;">
											
											<img src="img/dy.png" alt="" class="img2 img-dis">
											<!--<img src="img/dy_none.png" alt="" class="img1"> -->
											<span>自动订阅</span>
										</a>
									</div>
								</li>
								<li class="act last">
									<div class="last-child">
										<a href="">
											
											<!--<img src="img/yd.png" alt="" class="img2"> -->
											<img src="img/yd2.png" alt="" class="img1 img-dis"> 免费试读 </a>
											
									</div>
								</li>
							</ul>
						</div>
						<div class="one3">
							<div class="zczj"><img src="img/zczj.png" alt=""> 文&nbsp;摘 </div>
							<div class="con">
								<a href="/index.php">
								<h3><img src="img/vip.png" class="z" align="absmiddle">&nbsp;家庭&gt;&gt;</h3>
								<p class="con_p">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我独自在横跨过田地的路上走着，夕阳像一个守财奴似的，正藏起它的最后的金子。
									白昼更加深沉地没入黑暗之中，那已经收割了的孤寂的田地，默默地躺在那里。
									天空里突然升起了一个男孩子的尖锐的歌声。他穿过看不见的黑暗，留下他的歌声的辙痕跨过黄昏的静谧。
									他的乡村的家坐落在荒凉的边上，在甘蔗田的后面，躲藏在香蕉树、瘦长的槟榔树、椰子树和深绿色的贾克果树的阴影里。
								</p>
								</a>
							</div>
						</div>
					</div>
					<div class="book_detail_left_two">
						<div class="book_detail_left_two_top"id="notice-tit">
							<ul class="channel">
								<li class="select"><h3><a href="javascript:void(0);">编&nbsp;辑&nbsp;推&nbsp;荐</a></h3></li>
								<li><h3><a href="javascript:void(0);">名&nbsp;人&nbsp;推&nbsp;荐</a></h3></li>
							</ul>
						</div>
						<div id="notice-con">
							<div class="mod" style="display:block">
									<ul>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;《生如夏花:泰戈尔经典诗选(双语美绘版)》编辑推荐：图文美绘双语典藏，《新月集》+《飞鸟集》，清新演绎生命与诗歌最美丽的相遇，郑振铎优美译文。再现泰戈尔笔下灵性的芬芳，今生必读的58本书之一。 </li>
									</ul>
								</div>
							<div class="mod" style="display:none">
									<ul>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;他那高超和谐的人格，可以给我们不可计量的慰安，可以开发我们原来淤塞的心灵泉源，可以指示我们努力的方向与标准，可以纠正现代狂放恣纵的反常行为，可以摩挲我们想见古人的忧心，可以消平我们过渡时期张皇的意义，可以使我们扩大同情与爱心，可以引导我们入完全的梦境。
											——现代著名诗人、散文家 徐志摩</li>
										<li>&nbsp;&nbsp;&nbsp;&nbsp;好书，要能经得起时间的考验。我藏书十万册，有些书不值得看;有些书已经过时，有些书写得还没我好。泰戈尔这本《飞鸟集》，成书已有92年，现在读来，仍像是壮丽的日出，诗中散发的哲思，有如醍醐灌顶，令人茅塞顿开。不收藏这本书，很可惜。
											——当代著名作家、历史学家 李敖 </li>
									</ul>
								</div>
						</div>
					</div>
					
					
					<div class="book_detail_left_three">
						<iframe src="html/Book_pinglun.html" width="100%" height="100%" name="in" frameborder="0"></iframe>
					</div>
				</div>
				
				
				
				
				<div class="book_detail_right y">
					<div class="book_detail_right_one">
						<div class="writer_introduce">
							<ul>
								<li class="writor">作者：（印度）泰戈尔</li>
								<li class="writor">译者：郑振铎</li>
								<li>&nbsp;&nbsp;&nbsp;&nbsp;泰戈尔，印度近代著名诗人、哲学家，第一位获得诺贝尔文学奖的亚洲人。代表作品有《新月集》、《飞鸟集》、《吉檀迦利》等。</li>
							</ul>
						</div>
						<div class="another_book">
							<p>该作者的其他作品</p>
							<a href=""><img src="img/book4.png"/></a>
							<a href=""><img src="img/book9.png"/></a>
						</div>
					</div>
					<div class="book_detail_right_two">
						<div class="title">
							<div class="title_left_circle z">
								<img src="img/library_bookall.png"/>
							</div>
							<p>喜欢该本书的人同时也喜欢</p>
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
										<p>高难度沟通</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP6</span>
											<h4><a href="#">高难度沟通</a></h4>
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
										<p>神性的温柔</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP9</span>
											<h4><a href="#">神性的温柔</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book9.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>10</span>
										<p>生如夏花</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP10</span>
											<h4><a href="#">生如夏花</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book9.png"/></a></h3>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="more y">
							<a href="">更多&gt;&gt;</a>
						</div>
					</div>
					
					
					
					<div class="book_detail_right_three">
						<div class="title">
							<div class="title_left_circle z">
								<img src="img/library_bookall.png"/>
							</div>
							<p>热门推荐</p>
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
										<p>高难度沟通</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP6</span>
											<h4><a href="#">高难度沟通</a></h4>
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
										<p>神性的温柔</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP9</span>
											<h4><a href="#">神性的温柔</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book9.png"/></a></h3>
										</div>
									</div>
								</li>
								<li>
									<div class="top_paiming_normal top4">
										<span>10</span>
										<p>生如夏花</p>
									</div>
									<div class="top_paiming_hover">
										<div class="top_paiming_hover_left">
											<span class="hover_top4">TOP10</span>
											<h4><a href="#">生如夏花</a></h4>
											<span>145</span>
											<p>推荐</p>
											<h5><a href="#">文学</a></h5>
										</div>
										<div class="top_paiming_hover_right">
											<h3><a href="#"><img src="img/book9.png"/></a></h3>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="more y">
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
</html>
