<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>ItemList</title>
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
#top {
width:780px;
margin:30px auto;
border:1px solid #333;
}



#header {
width: 100%;
height: 80px;
background-color:skyblue;

}
#main {
width: 100%;
height: 500px;
text-align: center;
}
#footer {
width: 100%;
height: 80px;
background-color: black;
clear:both;
}
#text-center {
display: inline-block;
text-align: center;

}

.button{
display:inline-block;
width:20%;
height:70px;
text-align:center;
text-decoration:none;
padding-bottom:1px;
/* line-height:54px; */
outline:none;
margin:1px;
margin-top:7px;
background-color:#BAE3F9;
}




.button:hover{
background-color:#D3EDFB;

}
#itemArea{
width:70% auto;
}
.item{
position:relative;
display:inline:
}
.fukidashi{
text-align:center;
background-color:#F0FFFF;
color:black;
display:none;
}

.button:hover  {
position:relative;
}
.button:hover span{
    display:block;
    position:absolute;
    top:60px;
    left:25px;
    font-size:75%;
    color:#fff;
    background-color:#51a2c1;
    width:200px;
    padding:4px;
    border-radius:3px;
    z-index:100;
}
.button span:before{
    content:'';
    display:block;
    position:absolute;                         /* relativeからの絶対位置 */
    height:0;
    width:0;
    top:-13px;
    left:15px;
    border:13px transparent solid;
    border-right-width:0;
    border-left-color:#51A2C1;
    transform:rotate(270deg);            /* 傾きをつける */
    -webkit-transform:rotate(270deg);
    -o-transform:rotate(270deg);
    z-index:100;
}




#renshu{
background-color:skyblue;
width:100px;
height:50px;
}

.cmg{
width:100%;
text-align:center;
font-size:25px;
background-color:#eddfbe;
opacity:0.9;
}


.countArea{
width:40px;
height:40px;
border-radius: 50%;
background-color:#99DBC9;
float:right;
position:absolute;
top:20px;
right:20px;
text-align:center;
line-height:40px;
vertical-align: middle;
color:white;
font-size:25px;
}

.countArea:hover .countDisplay{
display:block;
}


.countDisplay{
display:none;
font-weight:bold;
width:130px;
background-color:#ddd;
border-radius:5px;
color:#222;
text-align:center;
font-size:15px;
position:absolute;
top:-85px;
right:10px;
position:relative;
padding:8px;
margin:50px;
float:right;

}

.countDisplay::after{
border-top:solid 7px transparent;
border-bottom:solid 7px transparent;
border-left:solid 10px #ddd;
right:-10px;
content:"";
display:block;
height:0;
top:20%;
position:absolute;
width:0;
}

.resetMessage{

}

.goHomeButton , .fadeBtn{
width:100px;
height:60px;
color:#000;
font-size:18px;
font-weight:bold;
line-height:60px;
text-align:center;
text-decoration:none;
overflow:hidden;
background:#ddd;
border:#fff 2px solid;
border-radius:5px;
box-shadow:0 0  3px #555;

}
</style>

	<script type="text/javascript">

			$('.button').on('click',function(){
				document.form1.submit();
			});
			</script>
</head>
<body>
	<div id="header">

	<div class="cmg"><s:property value="cartAddMessage" /></div>
	<div class="itemIncart"><s:property value="session.totalCount" />個の商品がはいっています</div>
	<div class="inCart"></div>
	<div class="countArea">
		<s:property value="session.totalCount" />
		<div class="countDisplay">カートの中の個数</div>
	</div>
		<div id="pr">
	</div>
</div>
<div id="main">
	<div id="top">
		<p>ItemList</p>
	</div>



<s:form action="CartAction" name="form1" >
	<div id="itemArea">

		<s:iterator value="session.itemData">



			<div class="button"   >
				<input  type="hidden" name="cartItemName" value='<s:property value="itemName" />'>
				<input  type="hidden" name="cartItemPrice" value='<s:property value="itemPrice" />'>
				<s:property value="itemName" />
				<pre></pre>
				<s:property value="itemPrice"/>円
				<span class="fukidashi">クリックで買い物かごへ入れる</span>




			</div>
		</s:iterator>




	</div>

</s:form>


<script type="text/javascript">


		$('.goHomeButton').hover(function(){
			$(this).stop().animate({opacity:'0.5', fontSize:'22px'}, 300);
		}, function(){
			$(this).stop().animate({opacity:'1', fontSize:'18px'}, 300);
		});
		</script>






<!-- ArrayListについかされた商品たち -->
<s:iterator value="session.inDataList" >
<s:property value="inName" />
<s:property value="inPrice" />

</s:iterator>


	<script type="text/javascript">

			$('.button').on('click',function(){

				$('.button input:hidden').prop('disabled', true);
				$(this).find('input:hidden').prop('disabled', false);
				$(this).closest('form').trigger('submit');





// 				$('.button').on('click',function(){
// 					$.when(
// 							$('.button input:hidden').prop('disabled', true),
// 							$(this).find('input:hidden').prop('disabled', false),
// 							$(this).closest('form').trigger('submit')
// 					).done(
// 						$('.add').slideDown()
// 					);
// 				});








//クリックした要素だけ取得したい；済 0525


});
			</script>
<s:property value="message" />
<a href='<s:url action="GoHomeAction" />' class="goHomeButton">ホームへ戻ります</a>
<s:form action="CartAction" >
	<input type="hidden" name="resetFlg" value="1">
	<s:submit value="カートリセット"  />

</s:form>
<s:property value="inMessage" />

<s:form action="CartResetAction">
	<input type="hidden" name="resetFlg" value="1">
	<s:submit />
</s:form>
<s:property value="session.resetFlg" />
<%-- <s:form action="CartAction"> --%>
<!-- <input type="text" name="text" > -->
<%-- <s:submit /> --%>
<%-- </s:form> --%>
<%-- <s:property value="session.textMessage" /> --%>
<%-- <s:property value="session.resetFlg" /><s:property value="inMessage" /> --%>
<%-- <s:if test="inMessage == null"> --%>
<!-- <p>error</p> -->
<%-- </s:if> --%>




<!-- 			<Script type="text/javascript"> -->
<!-- // 			$('.hoge').on('click', function(){ -->
<!-- // 				$('.hoge input:hidden').prop('disabled', true); -->
<!-- // 				$(this).find('input:hidden').prop('disabled',false); -->
<!-- // 				$(this).closest('form').trigger('submit'); -->
<!-- // 			}); -->
<!-- 			</Script> -->



<%-- 								<script type="text/javascript"> --%>

<!-- // 			$('.button').on('click',function(){ -->
<!-- // 				$('.button input:hidden').prop('disabled', true); -->
<!-- // 				$(this).find('input:hidden').prop('disabled', false); -->
<!-- // 				$(this).closest('form').trigger('submit'); -->

<!-- // 			}); -->
<%-- 			</script> --%>

<script type ="text/javascript">
setTimeout(function(){
	$('.cmg').slideUp();
}, 1000);  //商品を追加した時にメッセージのslideUp処理

</script>
			</div>

	<div class="resetMessage"><s:property value="resetMessage" /></div>

	<a href ="#" class="fadeBtn">BUTTON</a>
	<script type="text/javascript">


		$('.goHomeButton').hover(function(){
			$(this).stop().animate({opacity:'0.5', fontSize:'22px'}, 300);
		}, function(){
			$(this).stop().animate({opacity:'1', fontSize:'18px'}, 300);
		});
		</script>

</body>
</html>