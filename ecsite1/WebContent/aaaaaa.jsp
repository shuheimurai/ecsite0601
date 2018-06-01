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
background-color:#f0e68c;
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
background-color:white;
color:black;
display:none;
border-radius:15px;
border:1px solid #gray;
margin:2px;
}
.button:hover  .fukidashi{
display:block;
}

top{
width:400px;
height:400px;}
</style>
</head>
<body>


<top><h1>hoge</h1></top>

<div id="itemArea">
	<a class="button">
	<p>number</p>
	<pre></pre>
	<p>name</p>
	<p class="fukidashi">ほげほげ</p>
</a>

<a class="button">
	<p>number</p>
	<pre></pre>
	<p>name</p>
	<p class="fukidashi">ほげほげ</p>
</a>

<a class="button">
	<p>number</p>
	<pre></pre>
	<p>name</p>
	<p class="fukidashi">ほげほげ</p>
</a>

</div>




</body>
</html>