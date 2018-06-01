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
}

.button{
color:#555;
display:inline-block;

}

.button:hover{
background-color:gray;
opacirty:1.0;

}
#itemArea{
width:70% auto;
}
.item{
position:relative;
display:inline-block:
}
.fukidashi{
text-align:center;
background-color:white;
color:black;
display:none;
border-radius:15px;
border:1px solid #d0d0d0;
margin:2px;

}

.button:hover {
position:relative;
color:#333;
}
.button:hover span{
display:block;
position:absolute;
top:60px;
left:25px;
font-size:90%;
color:#fff;
background-color:#51A2C1;
width:75px;
padding:5px;
border-radius:3px;
z-index:100;
}

.button span:before{
content:'';
display:block;
position:absolute;
top:-13px;
left:15px;
border:13px transparent solid;
border-right-width:0;
border-left-color:#51A2C1;
transform:rotate(270deg);
-webkit-transform:rotate(270deg);
z-index:100;
}
.demo1:hover{
    color: #ff0000;
}
</style>
</head>
<body>




<div id="itemArea">


	<a class="button">

	<p>number</p>
	<pre></pre>
	<p>name</p>
<span class="fukidashi">ほげほげ</span>


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

<br>

<a class="button">

	<p>number</p>
	<pre></pre>
	<p>name</p>
<p class="fukidashi">ほげほげ</p>


	</a><a class="button">

	<p>number</p>
	<pre></pre>
	<p>name</p>
<p class="fukidashi">ほげほげ</p>


	</a><a class="button">

	<p>number</p>
	<pre></pre>
	<p>name</p>
<p class="fukidashi">ほげほげ</p>


	</a>

</div>



</div>


</body>
</html>