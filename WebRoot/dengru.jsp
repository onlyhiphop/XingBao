<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.7.7/jquery.fullPage.css">
	<link rel="stylesheet" type="text/css" href="html/css/home_style.css"/>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
		<div id="fullpage">
 			<div class="section section1">
 				<div class="section1_top">
 					<a href="zhuce.jsp" class="y">注&nbsp;册</a>
 				</div>
				<div class="section1_title">
					<h1>尝试着读一些别人眼中的好书</h1>
					<p>Good Book Recommendation</p>
				</div>
 				<div class="section1_regist">
 					<form action="dengruServlet" name="form2" method="post">
						<p>
							<label for="userName">会员名:</label>
							<input type="text" value="" name="userName">
							<span class="msg"></span>
						</p>
						<p>
							<label for="psd">密码:</label>
							<input type="password" value="" name="psd">
							<span class="msg"></span>
						</p>
						<div class="submitBtn"><input type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录"></div>
					</form>
					
					
 				</div>
 				<div class="section1_login">
 					<p>书籍是人类知识的总结，是全世界的营养品。</p>
 					<p>立身以立学为先，立学以读书为本。</p>
 					<p>书犹药也，善读之可以医愚。</p>
 				</div>
  			</div>
  
			<div class="section section2">
				<div class="section2_left">
					<p>文段精选</p>
					<div class="paragraph" id="gd">
						<p><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我独自在横跨过田地的路上走着，夕阳像一个守财奴似的，正藏起它的最后的金子。白昼更加深沉地没入黑暗之中，那已经收割了的孤寂的田地，默默地躺在那里。
						天空里突然升起了一个男孩子的尖锐的歌声。他穿过看不见的黑暗，留下他的歌声的辙痕跨过黄昏的静谧。他的乡村的家坐落在荒凉的边上，在甘蔗田的后面，躲藏在香蕉树、瘦长的槟榔树、椰子树和深绿色的贾克果树的阴影里。</a></p>
						<p><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我独自在横跨过田地的路上走着，夕阳像一个守财奴似的，正藏起它的最后的金子。白昼更加深沉地没入黑暗之中，那已经收割了的孤寂的田地，默默地躺在那里。
						天空里突然升起了一个男孩子的尖锐的歌声。他穿过看不见的黑暗，留下他的歌声的辙痕跨过黄昏的静谧。他的乡村的家坐落在荒凉的边上，在甘蔗田的后面，躲藏在香蕉树、瘦长的槟榔树、椰子树和深绿色的贾克果树的阴影里。</a></p>
					</div>
				</div>
				<div class="section2_right">
					<p><a href="">计划观看</a></p>
					<p><a href="">不喜欢</a></p>
					<p><a href="">已经看过</a></p>
					<p><a href="">换一个看看</a></p>
				</div>
			</div>
  			
  			<div class="section section3">
			    <div id="container">
				    <div id="list" style="left: -1510px;">
				    	<ul>
				    		<li>
				    			<a href=""><img src="img/book6.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">刺杀骑士团长</a></p>
				    				<p class="p3"><a href="">作者:村上春树</a></p>
				    				<p class="p2">一幅藏匿于阁楼的惊世画作串起战争年代挥之不去的伤痛经历和现实生活中超脱想象的意外离奇。夜半铃声与古庙洞口、神秘邻居免色涉与绘画班女学生秋川真理惠、“骑士团长”与“长面人”、现实世界与隐喻世界……村上春树用他擅长的层层剥开的写法，将读者步步引入奇妙之境。<p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book5.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">原则</a></p>
				    				<p class="p3"><a href="">作者:瑞.达利欧</a></p>
				    				<p class="p2">从为人处世、理解现实到日常工作、企业管理，覆盖管理者、普通白领、一般大众。所提炼的原则，也包括投资方面的感悟、公司治理、人类进化等，合适多层次、多领域的读者阅读。</p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book7.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">房思祺的初恋乐园</a></p>
				    				<p class="p3"><a href="">作者:林奕含</a></p>
				    				<p class="p2">思琪的故事，是被凌辱的少女用自己的话语呈现出的二十一世纪性现象的黑暗真像，在历史及文学史上都有划时代的意义。她必将成为少女们的关于“爱”与“性”的活生生的教科书，她必将载入文学史册。</p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book8.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">见识</a></p>
				    				<p class="p3"><a href="">作者:吴军</a></p>
				    				<p class="p2">吴军老师认为，与其他外部资源或者个人因素相比，个人的成就首先取决于“见识”。因此在书中，他将自己的经历，以及身边那些时代先行者的经验，以鲜明睿智的方式阐述出来，为你提供一个与众不同的、值得深度思考的看待世界、看待问题的视角。</p>
				    			</div>
				    		</li>
				    	</ul>
				    	<ul>
				    		<li>
				    			<a href=""><img src="img/book1.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="bookShowServlet?bookId=1">生如夏花</a></p>
				    				<p class="p3"><a href="bookShowServlet?bookId=1">作者:泰戈尔</a></p>
				    				<p class="p2">《生如夏花:泰戈尔经典诗选(双语美绘版)》收入泰戈尔具有代表性的两部诗集:以儿童生活和情趣为主旨的散文诗集《新月集》，关于爱情和人生的抒情诗集《飞鸟集》。这些诗歌语言清丽，意味隽永，将抒情和哲思完美结合，给人以无尽美感和启迪。</p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book2.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">人间滋味</a></p>
				    				<p class="p3"><a href="">作者:汪曾祺</a></p>
				    				<p class="p2">汪曾祺老先生绝对可以称得上是资深“吃货”。他自诩为“有毛的不吃掸子，有腿的不吃板凳，大荤不吃死人，小荤不吃苍蝇”，这是何等的境界。如果没有过往岁月的难忘经历，如果没有对各地美食的留恋，恐怕难以形成这些精妙的美文。</p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book3.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">鱼河岸小店</a></p>
				    				<p class="p3"><a href="">作者:西加奈子</a></p>
				    				<p class="p2">好看的脸庞千篇一律，有趣的灵魂万里挑一。 肥硕的身躯、荒谬的品味、失败的废柴，却有着无与伦比的处世哲学。不要回头看，也不要担心未来，像肉子一样，努力做生活的角斗士！</p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book4.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">飞鸟集·新月集</a></p>
				    				<p class="p3"><a href="">作者:泰戈尔</a></p>
				    				<p class="p2">《飞鸟集·新月集》中，《新月集》有着特殊的隽永的艺术魅力，把我们带到了一个纯洁的儿童世界，勾起了我们对于童年生活的美好回忆。</p>
				    			</div>
				    		</li>
				    	</ul>
				    	<ul>
				    		<li>
				    			<a href=""><img src="img/book6.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">刺杀骑士团长</a></p>
				    				<p class="p3"><a href="">作者:村上春树</a></p>
				    				<p class="p2">一幅藏匿于阁楼的惊世画作串起战争年代挥之不去的伤痛经历和现实生活中超脱想象的意外离奇。夜半铃声与古庙洞口、神秘邻居免色涉与绘画班女学生秋川真理惠、“骑士团长”与“长面人”、现实世界与隐喻世界……村上春树用他擅长的层层剥开的写法，将读者步步引入奇妙之境。<p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book5.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">原则</a></p>
				    				<p class="p3"><a href="">作者:瑞.达利欧</a></p>
				    				<p class="p2">从为人处世、理解现实到日常工作、企业管理，覆盖管理者、普通白领、一般大众。所提炼的原则，也包括投资方面的感悟、公司治理、人类进化等，合适多层次、多领域的读者阅读。</p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book7.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">房思祺的初恋乐园</a></p>
				    				<p class="p3"><a href="">作者:林奕含</a></p>
				    				<p class="p2">思琪的故事，是被凌辱的少女用自己的话语呈现出的二十一世纪性现象的黑暗真像，在历史及文学史上都有划时代的意义。她必将成为少女们的关于“爱”与“性”的活生生的教科书，她必将载入文学史册。</p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book8.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">见识</a></p>
				    				<p class="p3"><a href="">作者:吴军</a></p>
				    				<p class="p2">吴军老师认为，与其他外部资源或者个人因素相比，个人的成就首先取决于“见识”。因此在书中，他将自己的经历，以及身边那些时代先行者的经验，以鲜明睿智的方式阐述出来，为你提供一个与众不同的、值得深度思考的看待世界、看待问题的视角。</p>
				    			</div>
				    		</li>
				    	</ul>
				    	<ul>
				    		<li>
				    			<a href=""><img src="img/book1.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">生如夏花</a></p>
				    				<p class="p3"><a href="">作者:泰戈尔</a></p>
				    				<p class="p2">《生如夏花:泰戈尔经典诗选(双语美绘版)》收入泰戈尔具有代表性的两部诗集:以儿童生活和情趣为主旨的散文诗集《新月集》，关于爱情和人生的抒情诗集《飞鸟集》。这些诗歌语言清丽，意味隽永，将抒情和哲思完美结合，给人以无尽美感和启迪。</p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book2.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">人间滋味</a></p>
				    				<p class="p3"><a href="">作者:汪曾祺</a></p>
				    				<p class="p2">汪曾祺老先生绝对可以称得上是资深“吃货”。他自诩为“有毛的不吃掸子，有腿的不吃板凳，大荤不吃死人，小荤不吃苍蝇”，这是何等的境界。如果没有过往岁月的难忘经历，如果没有对各地美食的留恋，恐怕难以形成这些精妙的美文。</p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book3.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">鱼河岸小店</a></p>
				    				<p class="p3"><a href="">作者:西加奈子</a></p>
				    				<p class="p2">好看的脸庞千篇一律，有趣的灵魂万里挑一。 肥硕的身躯、荒谬的品味、失败的废柴，却有着无与伦比的处世哲学。不要回头看，也不要担心未来，像肉子一样，努力做生活的角斗士！</p>
				    			</div>
				    		</li>
				    		<li>
				    			<a href=""><img src="img/book4.png"/></a>
				    			<div class="list_right">
				    				<p class="p1"><a href="">飞鸟集·新月集</a></p>
				    				<p class="p3"><a href="">作者:泰戈尔</a></p>
				    				<p class="p2">《飞鸟集·新月集》中，《新月集》有着特殊的隽永的艺术魅力，把我们带到了一个纯洁的儿童世界，勾起了我们对于童年生活的美好回忆。</p>
				    			</div>
				    		</li>
				    	</ul>
				    </div>
				    <a href="javascript:;" id="prev" class="arrow">&lt;</a>
				    <a href="javascript:;" id="next" class="arrow">&gt;</a>
				</div>
				<div class="section3_bottom">
					<p>沐春风，惹一身红尘；望秋月，化半缕青烟。</p>
					<p>顾盼间乾坤倒转，一霎时沧海桑田。</p>
					<p>方晓，弹指红颜老，刹那芳华逝。</p>
				</div>
				
			</div>
 			
 			<div class="section section4">
 				<div class="section4_top">
 					<ul>
	 					<li class="section4_top_1">
	 						<p class="dh">文学</p>
	 						<div class="section4_top_p dh">
	 							<p><a href="library.jsp">作品集</a>&nbsp;&nbsp;<a href="library.jsp">民间文学</a></p>
	 							<p><a href="library.jsp">散文随笔</a>&nbsp;&nbsp;<a href="library.jsp">文学理论</a></p>
	 							<p><a href="library.jsp">文学鉴赏</a>&nbsp;&nbsp;<a href="library.jsp">戏剧曲艺</a></p>
	 							<p><a href="library.jsp">诗歌词曲</a>&nbsp;&nbsp;<a href="library.jsp">影视文学</a></p>
	 							<p><a href="library.jsp">名家作品</a>&nbsp;&nbsp;<a href="library.jsp">期刊杂志</a></p>
	 							<p><a href="library.jsp">文学史</a></span></p>
	 						</div>
	 					</li>
	 					<li class="section4_top_2">
	 						<p class="dh">小说</p>
	 						<div class="section4_top_p dh">
	 							<p><a href="library.jsp">悬疑</a>&nbsp;&nbsp;<a href="library.jsp">玄幻</a></p>
	 							<p><a href="library.jsp">军史</a>&nbsp;&nbsp;<a href="library.jsp">言情</a></p>
	 							<p><a href="library.jsp">科幻</a>&nbsp;&nbsp;<a href="library.jsp">世界名著</a></p>
	 							<p><a href="library.jsp">中国古典</a>&nbsp;&nbsp;<a href="library.jsp">奇幻</a></p>
	 							<p><a href="library.jsp">校园</a>&nbsp;&nbsp;<a href="library.jsp">仙侠</a></p>
	 							<p><a href="library.jsp">恐怖&nbsp;&nbsp;<a href="library.jsp">侦探</a></a></span></p>
	 						</div>
	 					</li>
	 					<li class="section4_top_3">
	 						<p class="dh">传记</p>
	 						<div class="section4_top_p dh">
	 							<p><a href="library.jsp">宗教人物</a>&nbsp;&nbsp;<a href="library.jsp">政治人物</a></p>
	 							<p><a href="library.jsp">军事人物</a>&nbsp;&nbsp;<a href="library.jsp">艺术家</a></p>
	 							<p><a href="library.jsp">科学家</a>&nbsp;&nbsp;<a href="library.jsp">文学家</a></p>
	 							<p><a href="library.jsp">领袖首脑</a>&nbsp;&nbsp;<a href="library.jsp">历代帝王</a></p>
	 							<p><a href="library.jsp">体育明星</a>&nbsp;&nbsp;<a href="library.jsp">娱乐明星</a></p>
	 						</div>
	 					</li>
	 					<li class="section4_top_4">
	 						<p class="dh">成功与励志</p>
	 						<div class="section4_top_p dh">
	 							<p><a href="library.jsp">为人处世</a>&nbsp;&nbsp;<a href="library.jsp">个人修养</a></p>
	 							<p><a href="library.jsp">心灵读物</a>&nbsp;&nbsp;<a href="library.jsp">创业必修</a></p>
	 							<p><a href="library.jsp">求职面试</a>&nbsp;&nbsp;<a href="library.jsp">名人励志</a></p>
	 							<p><a href="library.jsp">名言格言</a>&nbsp;&nbsp;<a href="library.jsp">人际与社交</a></p>
	 							<p><a href="library.jsp">文明礼仪</a>&nbsp;&nbsp;<a href="library.jsp">成功学</a></p>
	 						</div>
	 					</li>
	 					<li class="section4_top_5">
	 						<p class="dh">历史</p>
	 						<div class="section4_top_p dh">
	 							<p><a href="library.jsp">中国史</a>&nbsp;&nbsp;<a href="library.jsp">亚洲史</a></p>
	 							<p><a href="library.jsp">美洲史</a>&nbsp;&nbsp;<a href="library.jsp">非洲史</a></p>
	 							<p><a href="library.jsp">大洋洲史</a>&nbsp;&nbsp;<a href="library.jsp">欧洲史</a></p>
	 							<p><a href="library.jsp">世界总史</a>&nbsp;&nbsp;<a href="library.jsp">文化史</a></p>
	 							<p><a href="library.jsp">风俗习惯</a>&nbsp;&nbsp;<a href="library.jsp">文物考古</a></p>
	 						</div>
	 					</li>
 					</ul>
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
						<span>Copyright ©  2018 XinBaoreading.All Rights Reserved. Powered By 馨宝reading</span>
					</div>
				</div>
	 		</div>  
		
		
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.7.7/jquery.fullPage.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-slimScroll/1.3.7/jquery.slimscroll.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/move.js/0.5.0/move.js"></script>
		
		<script>
		//滑动效果
			$(function(){
				$("#fullpage").fullpage({
					verticalCentered:false,
					anchors:['page1','page2','page3','page4'],
					navigation:true,
					scrollOverflow:true,
					navigationTooltips:['尝试着读一些别人眼中的好书。','文段精选','精品推荐','导航'],
					afterLoad:function(link,index){
						switch(index){
							case 1:
							
							break;
							
							case 2:
							
							break;
							
							case 3:
							
							break;
							
							case 4:
							
							break;
							
							default:
							break;
							}
						},
						
						onLeave:function(link,index){
						switch(index){
							case 1:
							
							break;
							
							case 2:
							
							break;
							
							case 3:
							
							break;
							
							case 4:
							
							break;
							
							default:
							break;
							}
						},
						
						
					});
				});
				
			
			window.onload=function(){		
			//第三面		
			var container = document.getElementById('container');
            var list = document.getElementById('list');
            var prev = document.getElementById('prev');
            var next = document.getElementById('next');
            var index = 1;
            var len = 2;
            var animated = false;
            var interval = 3000;
            var timer;
            function animate (offset) {
                if (offset == 0) {
                    return;
                }
                animated = true;
                var time = 300;
                var inteval = 10;
                var speed = offset/(time/inteval);
                var left = parseInt(list.style.left) + offset;

                var go = function (){
                    if ( (speed > 0 && parseInt(list.style.left) < left) || (speed < 0 && parseInt(list.style.left) > left)) {
                        list.style.left = parseInt(list.style.left) + speed + 'px';
                        setTimeout(go, inteval);
                    }
                    else {
                        list.style.left = left + 'px';
                        if(left>-510){
                            list.style.left = -1510 * len + 'px';
                        }
                        if(left<(-1510 * len)) {
                            list.style.left = '-1510px';
                        }
                        animated = false;
                    }
                }
                go();
            }
            function play() {
                timer = setTimeout(function () {
                    next.onclick();
                    play();
                }, interval);
            }
            function stop() {
                clearTimeout(timer);
            }

            next.onclick = function () {
                if (animated) {
                    return;
                }
                if (index == 2) {
                    index = 1;
                }
                else {
                    index += 1;
                }
                animate(-1510);
            }
            prev.onclick = function () {
                if (animated) {
                    return;
                }
                if (index == 1) {
                    index = 2;
                }
                else {
                    index -= 1;
                }
                animate(1510);
            }

            container.onmouseover = stop;
            container.onmouseout = play;

            play();
				}
			
				
		//第二面轮播
		
		var area = document.getElementById('gd');
		var iliHeight = 36;//单行滚动的高度
		var speed = 130;//滚动的速度
		var time;
		var delay= 0;
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
