<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>Home画面</title>
<style type="text/css">

body {
margin:0;
padding:0;
line-height:1.6;
letter-spacing:1px;
font-family:Verdana, Helvetica, sans-serif;
font-size:12px;
color:#333;
background:#fff;
}


table {
text-align:center;
margin:0 auto;
}
/* ========ecsite LAYOUT======== */
#anime {
position:relative;
width:70%;
margin:30px auto;
border:solid 1px #81cbc8;
text-align:center;
}

#anime p{
z-index:3;
position:relative;
display:block;
padding:0.5em 0;


}

#anime::before,
#anime::after{
content:"";
display:block;
position:absolute;
top:0;
left:0;
width:100%;
height:100%;
}

#anime::before{
z-index:1;
background-color:#fff;
opacity:0.3;
}

#anime::after{

z-index:2;
width:0%;
background-color:#81cbc8;



}

 #top:hover #anime::after{
 width:100%;
 transition: width 1s linear;

 }



#anime::after {
transition-delay:0.3s;
}



#header {
width: 80% auto;
padding:0 10%;
height: 80px;

}
#main {
width: 100%;
height: 500px;


}
.main-container{
width:80%;
margin:0 auto;
margin-top:70px;
}

#left{
width:80%;
height:800px;
float:left;

}

#right{
width:20%;
height:800px;
float:left;

}


#footer {
float:clear;
width: 100%;
height: 80px;
background-color: #81cbc8 ;
clear:both;
}
#text-center {
display: inline-block;
text-align: center;

}

.logo{
font-family:'Hiragino Kaku Gothic ProN';
padding-left:10px;

font-size:25px;
float:left;
border-bottom:solid 1px black;

}

.logo span{
font-size:4px;
padding-left:10px;
padding-top:18px;
}

.login{
text-decoration:none;
float:right;
background:#d6c481 ;
width:70px;
height:50px;
text-align:center;
line-height:50px;
border-radius:10px;
margin:20px 10px 0 0;
color:black;
}

.inquiry{
text-decoration:none;
float:right;
background:#d6c481 ;
width:80px;
height:50px;
text-align:center;
line-height:50px;
border-radius:10px;
margin:20px 10px 0 0;
color:black;

}
.switch{
font-family:serif;
box-shadow:5px 5px 9px 1px #ccc;
cursor:pointer;
}
.switch:hover{
text-decoration:underline;
box-shadow:2px 2px 0 0.3px #ccc;

}


#mddNav {
width:100%;
height:45px;
background:#ebebeb;
background:linear-gradient(to bottom, #ebebeb 45%, #d8d8d8 55%);
border-top:#aaa 1px solid;
border-bottom:#aaa 1px solid;
position:relative;
z-index:10;

}

#mddNav > ul{
margin:0 auto;
width:800px;
height:45px;
text-align:left;
}

#mddNav > ul >li {
width:160px;
height:45px;
float:left;
border-left: #aaa 1px solid;
box-sizing:border-box;
}

#mddNav > ul > li:lastChild{
border-right:#aaa 1px solid;
}

#mddNav > ul > li > a{
height:45px;
font-weight:bold;
line-height:45px;
display:block;
text-align:center;
border:#fff 1px solid;
transition:all 0.2s linear;
}

#mddNav > ul > li:hover > a {
background:#fff;
}

#mddNav .mddWrap {
top:45px;
left:0;
width:100%;
height:0;
text-align:center;
background:#fff;
background:linear-gradient(to bottom, #fff 0%,#efefef 100%);
border-bottom:#aaa 1px solid;
position:absolute;
z-index:10;
overflow:hidden;
display:none;
box-shadow:0 2px 2px #eee;
}

#mddNav .mddWrap .mddInner{
margin:0 auto;
padding-top:30px;
width:800px;
height:200px;
line-height:1.5em;
text-align:left;
}

#mddNav .mddWrap .mddInner > div {
margin-right:20px;
width:250px;
float:left;
border-right:#aaa 1px solid;
}

#mddNav .mddWrap .mddInner > div:lastchild{
margin-right:0;
border-right:none;
}

#mddNav .mddWrap .mddInner > div > ul > li{
font-size:0.8em;
line-height:1.8em;
}

.follow{
overflow:hidden;
text-align:center;
}

.follow span{
display:inline-block;
padding:0 0.5em;
position:relative;
}

.follow span:before,
.follow span:after{
border-top:1px solid;
content:"";
position:absolute;
top:50%;
width:99em;
}

.follow span:before{
right :100%;

}

.follow span::after{
left:100%;
}

.tw:hover{
color:skyblue;
transition:0.5s;
cursor:pointer;
}

.fa:hover{
color:skyblue;
transition:0.5;
cursor:pointer;
}

.tw{
padding:0 18px;

}

.icon{
text-align:center;}


.ticker {
	margin: 0 auto;
	padding: 10px 20px;
	width: 80%;
	text-align: left;
	background: #fff;
	background: linear-gradient(to bottom,  #fff 50%,#efefef 100%);
	border: #4aa6b5  2px solid;
	border-radius: 25px;
	position: relative;
	overflow: hidden;
}

.ticker ul {
	width: 100%;
	height: 20px;
	position: relative;
}

.ticker ul li {
	font-size:1.2em;
	top: 0;
	left: 0;
	width: 100%;
	height: 20px;
	line-height: 20px;
	display: none;
	font-size:14px;
	position: absolute;
}

.ticker ul li::before{
content:"new ";
font-size:12px;
}


#fixedTop{
padding:15px 20px;
right:10px;
bottom:10px;
color:#fff;
text-align:center;
display:block;
background-color:#000;
position:fixed;
z-index:99;
}
</style>


</head>
<body>

<div id="header">


<h2 class="logo">online shop<span>-オンラインショップ-</span></h2>



	<a class="login switch" href='<s:url action="LoginAction" />'>ログイン</a>
	<a class="inquiry switch" href='<s:url action="InquiryAction" />'>お問い合わせ</a>

<div id="pr">
</div>

</div>


<div id="main">

<!-- 	<nav id="mddNav"> -->
<!-- 	<ul> -->
<!-- 		<li> -->
<!-- 			<a href="#">WORKS</a> -->
<!-- 			<div class="mddWrap"> -->
<!-- 				<div class="mddInner"> -->
<!-- 					<p><Strong>WORKS</Strong>onlineshopの紹介をします</p> -->
<!-- 					<div> -->
<%-- 						<span>DESIGN</span> --%>
<!-- 						<ul> -->
<!-- 							<li><a href="#">コンセプト</a></li> -->
<!-- 							<li><a href="#">商品について</a></li> -->
<!-- 							<li><a href="#">商品</a></li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 					<div> -->
<%-- 						<span>hoge</span> --%>
<!-- 						<ul> -->
<!-- 							<li><a href="#">fuga</a></li> -->
<!-- 							<li><a href="#">fuga</a></li> -->
<!-- 							<li><a href="#">fuga</a></li> -->
<!-- 						</ul> -->
<!-- 						</div> -->
<!-- 						<div> -->
<%-- 							<span>hoge</span> --%>
<!-- 							<ul> -->
<!-- 								<li><a href="#">fuga</a></li> -->
<!-- 								<li><a href="#">fuga</a></li> -->
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</li> -->


<!-- 			</ul></nav> -->



	<div id="top">
		<div id="anime"><p>MENU</p></div>
	</div>

	<div class="main-container">

		<div id="left">

			<div class="ticker">
		<ul>
			<li><a href="#">2018/03/12 商品を追加しました</a></li>
			<li><a href="#">2018/03/15 採用情報を公開しました</a></li>
			<li><a href="#">2018/05/01 スマートフォンアプリをリリースしました</a></li>
		</ul>
	</div>

			<s:form action="HomeAction">

				<s:submit value="商品購入"/>

			</s:form>

		<s:form action="ItemListAction">

			<s:submit value="商品一覧" />

		</s:form>

	<s:if test="#session.id != null">

		<p>ログアウトする場合は

			<a href='<s:url action="LogoutAction" />'>こちら</a>
		</p>

	</s:if>

<%-- <s:form action="GuestUserAction" /> --%>

	<p>
		<a href='<s:url action="GuestUserAction" />'>ゲストユーザーでログイン</a>
	</p>
	</div>


<div id="right">
<h4 class="follow"><span>FOLLOW US</span></h4>
<div class="icon">
<i class="fab fa-twitter fa-2x tw"></i>
<i class="fab fa-facebook-f fa-2x tw"></i>
</div>


</div>
</div>
</div>




<div id="footer">

<div id="pr">
</div>

</div>
<script type="text/javascript">
$(function(){
	$(window).load(function(){
		var thisTicker = $('.ticker'),
		tickerUl = thisTicker.find('ul'),
		tickerLl = tickerUl.find('li'),
		liFirst = tickerUl.find('li:first');

		liFirst.css({display:'block',opacity:'0',zIndex:'98'}).stop().animate({opacity:'1'},1000,'linear').addClass('showlist');

		setInterval(function(){
			var showLi = thisTicker.find('.showlist');
			showLi.animate({opacity:'0'},1000,'linear',function(){
				$(this).next().css({display:'block',opacity:'0',zIndex:'99'}).animate({opacity:'1'},1000,'swing').addClass('showlist').end().appendTo(tickerUl).css({display:'none',zIndex:'98'}).removeClass('showlist');
			});
		},6000);

		$('body').append('<a href="javascript:void(0);" id="fixedTop">▲</a>');
		$('#fixedTop').on('click', function(){
			$('html,body').animate({scrollTop:'0'}, 500);
		});
	});
});
</script>
</body>
</html>