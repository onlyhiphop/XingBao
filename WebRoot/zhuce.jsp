<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="utf-8" />
	
	<link rel="stylesheet" type="text/css" href="html/css/zhuce_style.css" />
	
  </head>
  
  	<body>
  		
		<div class="zhuce">
			<div class="zhuce_p">
				<p>欢&nbsp;&nbsp;迎&nbsp;&nbsp;注&nbsp;&nbsp;册&nbsp;&nbsp;星&nbsp;&nbsp;宝&nbsp;&nbsp;reading</p>
			</div>
			<div class="zhuce_form">
				<form action="zhuceServlet" name="form1" method="post">
				<p>
					<label for="userName">会员名:</label>
					<input type="text" value="用户名/手机号/邮箱地址" id="userName" name="userName">
					<span class="msg"></span>
				</p>
				<p class="count"><!--<em class="num">0</em> 个字符--></p>
					<p>
						<label for="psd">登录密码:</label>
						<input type="password" value="" id="psd" name="psd">
						<span class="msg"></span>
					</p>
					<p class="active"><em class="active-state">弱</em><em class="active-state">中</em><em class="active-state">强</em></p>
					<p>
						<label for="psd2">确认密码:</label>
						<input type="password" value="" id="psd2" name="psd2" disabled class="bg-nav">
						<span class="msg"></span>
					</p>
					<p class="yanzhengma">
					<label class="z">验证码:</label>
					<input type="text" id = "input" value="" />
					<input type = "button" id="code" class="x_code_cc"/>
					<span class="z"><a onclick="createCode()" >看不清</a></span>
					<span id="yanzhengma_false" class="z"></span>
					</p>
						
					<p class="submitBtn"><input type="submit" value="同 &nbsp;意&nbsp;协&nbsp;议&nbsp;并&nbsp;注&nbsp;册"></p>

				</form>
			</div>
		</div>
		
		<script type="text/javascript">
			//注册界面
				
				function g(el){
					return document.getElementById(el);
				}
				function getValueLength(str){
					return str.replace(/[^\x00-\xff]/g,"xx").length;
				}
				function fundStr(str,n){
					var tem=0;
					for(var i=0;i<str.length;i++){
						if(str.charAt(i)==n){
							tem++
						}
					}
					return tem;
				}
				window.onload=createCode;
					var form1=document.form1;
					var userName=form1.userName,
						psd=form1.psd,
						psd2=form1.psd2;
					var msg=document.querySelectorAll(".msg");
					//userName.onfocus
					var ovalue=userName.value;
					var valueLenght=0;
					var zhuce=document.getElementById("zhuce");
					userName.onfocus=function(){
						var count=form1.querySelector(".count");
						var num=count.querySelector(".num");
						if(this.value==ovalue){
						this.value="";
						}
						this.style.color="#000";
						msg[0].innerHTML="<i class='ts'></i> 5-25个字符，一个汉字为两个字符，推荐使用中文会员名";
						count.style.visibility="visible";
					}
					//userName.onkeyup
					userName.onkeyup=function(){
						var count=form1.querySelector(".count");
						var num=count.querySelector(".num");
						valueLength=getValueLength(this.value);
						num.innerHTML=valueLength;
						
					}
					//userName.onblur
					userName.onblur=function(){
						var re=/[^\w\u4e00-\u9fa5]/;
						var count=form1.querySelector(".count");
						//非法字符
						if(re.test(this.value)){
							msg[0].innerHTML="<i class='no'></i> 用户名不可含非法字符"
						}
						//用户名为空
						else if(this.value==""){
							this.value=ovalue;
							this.style.color="#ccc";
							msg[0].innerHTML="<i class='no'></i> 用户名不可为空";
							count.style.visibility="hidden";
						}
						//字符长度小于5
						else if(valueLength<5){
							msg[0].innerHTML="<i class='no'></i> 用户名不可小于5个字符";
						}
						//字符长度大于25
						else if(valueLength>25){
							msg[0].innerHTML="<i class='no'></i> 用户名不可大于25个字符";
						}
						//ok
						else{
							msg[0].innerHTML="<i class='ok'></i> ok!";
						}
						
					}
					//psd.onfocus
					psd.onfocus=function(){
						msg[1].innerHTML="<i class='ts'></i> 6-18个字符，请使用字母加数字加符号的组合密码";
					}
					//psd.onkeyup
					psd.onkeyup=function(){
						var active=form1.querySelector(".active");
						var em=active.querySelectorAll(".active-state");
						valueLength=getValueLength(this.value);
						if(valueLength==0){active.style.visibility="hidden"}
						else{active.style.visibility="visible";}
						if(valueLength<6){
							em[0].style.backgroundColor="rgb(255,62,17)";
							em[1].style.backgroundColor="rgb(255,181,144)";
							em[2].style.backgroundColor="rgb(255,181,144)";
							if(!psd2.disabled){
							psd2.setAttribute("disabled","disabled");
							}
						}
						else if(valueLength<12){
							em[0].style.backgroundColor="rgb(255,62,17)";
							em[1].style.backgroundColor="rgb(255,62,17)";
							em[2].style.backgroundColor="rgb(255,181,144)";
							psd2.removeAttribute("disabled");
						}
						else{
							em[0].style.backgroundColor="rgb(255,62,17)";
							em[1].style.backgroundColor="rgb(255,62,17)";
							em[2].style.backgroundColor="rgb(255,62,17)";
							psd2.removeAttribute("disabled");
						}
					}
					//psd.onnblur
					psd.onblur=function(){
						var total=fundStr(this.value,this.value[0]);
						valueLength=getValueLength(this.value);
					//不能为空
						if(valueLength==0){
							msg[1].innerHTML="<i class='no'></i> 密码不能为空";
						}
					//不能全是相同字符
						else if(total==this.value.length){
							msg[1].innerHTML="<i class='no'></i> 密码不能为同一字符";
						}
					//全是字母
						else if(!/[^a-zA-Z]/.test(this.value)){
							msg[1].innerHTML="<i class='no'></i> 密码不能全为字母";
						}
					//全是数字
						else if(!/[^\d]/.test(this.value)){
							msg[1].innerHTML="<i class='no'></i> 密码不能全为数字";
						}
					//字符数小于6
						else if(valueLength<6){
							msg[1].innerHTML="<i class='no'></i> 密码字符数小于6";
						}
					//字符数大于18
						else if(valueLength>18){
							msg[1].innerHTML="<i class='no'></i> 密码字符数大于18";
						}
					//ok
						else{
							msg[1].innerHTML="<i class='ok'></i> ok!";
						}
					}
					//psd2.onfocus
					psd2.onfocus=function(){
						msg[2].innerHTML="<i class='ts'></i> 请在输入一次密码";
					}
					//psd2.onblur
					psd2.onblur=function(){
						if(this.value!=psd.value){
							msg[2].innerHTML="<i class='no'></i> 两次输入的密码不一致";
						}
						else{
							msg[2].innerHTML="<i class='ok'></i> ok!";
				
						}
					}
					
					
				////////////////////////////
				var code ; //在全局定义验证码
					var yan_false=document.getElementById("yanzhengma_false");
					function createCode(){
						code = ""; 
						var codeLength = 4;//验证码的长度 
						var checkCode = document.getElementById("code"); 
						var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R', 'S','T','U','V','W','X','Y','Z');//随机数 
						for(var i = 0; i < codeLength; i++) {//循环操作 
							var index = Math.floor(Math.random()*36);//取得随机数的索引（0~35） 
							code += random[index];//根据索引取得随机数加到code上 
							} 
							checkCode.value = code;//把code值赋给验证码
							} 
							//校验验证码
					function validate(){ 
								var inputCode = document.getElementById("input").value.toUpperCase(); //取得输入的验证码并转化为大写 
								if(inputCode.length <= 0) { 
									//若输入的验证码长度为0 
									yan_false.innerHTML="请输入验证码";
									//alert("请输入验证码！"); //则弹出请输入验证码 
									} else if(inputCode != code ) { //若输入的验证码与产生的验证码不一致时 
										yan_false.innerHTML="验证码错误，请重新输入";
										//alert("验证码输入错误！@_@"); //则弹出验证码输入错误 
										createCode();//刷新验证码 
										document.getElementById("input").value = "";//清空文本框 
										} else { //输入正确时 
											yan_false.innerHTML="ok!";
										//	alert("^-^"); //弹出^-^ 
											} 
							}
					input.onblur=validate;	
		
		</script>
	</body>
</html>
