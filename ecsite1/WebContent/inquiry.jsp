<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//divD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.divd">
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
<title>Inquiry画面</title>
<style type="text/css">
.header{
	width:100%;

	height:100px;
	}
.header h2{
font-family:'Hiragino Kaku Gothic ProN';


font-size:15px;
float:left;
border-bottom:solid 1px black;
}
.main div {
matgin:0;
width:500px;
text-align:center;
}

.main div div {
font-weight:bold;
}

input[type="text"]{
padding:10px;
width:100%;
font-size:1em;
background:#fff;
border:#000 1px solid;
box-sizing:border-box;
}

textarea {
 padding:10px;
 width:100%;
 height:200px;
 font-size:1em;
 background:#fff;
 border:#000 1px solid;
 box-sizing:border-box;
 }

.contents{
margin-top:30px;
}



.contents .count{
text-align:right;
font-weight:normal;
}
</style>
</head>
<body>
	<div class="header">
		<h2>お問い合わせ</h2>
	</div>
<div class="main">
<form action="InquiryConfirmAction">
	<div>
		<div>お名前【必須】</div>
		<div><input type="text"  name="name" class="required" ></div>
	</div>

	<div>
		<div>電話番号</div>
		<div><input type="text" name="tel"></div>
	</div>
	<div class="contents">
		<div class=>内容</div>
		<div class="count">0</div><textarea  name="text" class="required" ></textarea>
	</div>
	<input type="submit" value="送信">
</form>
</div>

<script type="text/javascript">
	$('.required').on('keydown keyup keypress change focus blur', function(){
		if($(this).val() == ''){
			$(this).css({
				backgroundColor:'#e8e8e8'
			});
		}else {
			$(this).css({
				backgroundColor:'#fff'
			});
		}
		}).change();
	var countThis = $('.contents');

	countThis.find('textarea').on('keydown keyup keypress change', function(){
		var thisValueLength  = $(this).val().length;
		countThis.find('.count').text(thisValueLength);
	});


	</script>


</body>
</html>