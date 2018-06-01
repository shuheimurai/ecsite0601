<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>BuyItem画面</title>

<style type="text/css">

	body{
	margin:0;
	padding:0;
	line-height:1.6;
	letter-spacing:1px;



	font-family:Verdana, Helvetica, sans-serif;
	font-size:12px;
	color:#333;
	background:#fff;
	}

	table{
	text-align:center;
	margin:0 auto;
	}

	#top{
	width:780px;
	margin:30px auto;
	border:1px solid #333;
	}

	#header{
	width:100%;
	height:80px;
	background-color:black;
	}
	#main{
	width:100%;
	height:500px;
	text-align:center;
	}
	#footer{
	width:100%;
	height:80px;
	background-color:black;
	clear:both;
	}

	.err{
	color:red;
	}
	</style>
</head>
<body>
	<div id="header">
		<div id="pr">
	</div>
</div>
<div id="main">
	<div id="top">
		<p>BuyItem</p>
	</div>
	<div class="err"><s:if test="errorMessage !=''"><s:property value="errorMessage" escape="false" /></s:if></div>
<div>
	<s:form action="BuyItemAction" name="form1">

	<table>
		 <tr>
		 	<td></td>
		 	<td>
		 		 <input type="checkbox" value="noteCount" id="note1" onClick="onNoteButtonClick();"/>
		 	</td>
		 	<td></td>
		 </tr>
		 <tr>
			<td>
				<span>商品名</span>
			</td>
			<td>
				<s:property value="session.buyItem_name[0]" /><br>
			</td>
		</tr>
		<tr>
			<td>
				<span>値段</span>
			</td>
			<td>
				<s:property value="session.buyItem_price.get(0)"/><span>円</span>
			</td>
		</tr>
		<tr>
			<td>
				<span>購入個数</span>
			</td>
			<td id="noteData">
				<script type="text/javascript">
				function onNoteButtonClick(){
					check1 = document.form1.note1.checked;
					noteData = document.getElementById("noteData");
				if(check1 == true){
					noteData.innerHTML =
				"<select name='noteCount' id='noteCount'>"+
					"<option value='1' selected='selected'>1</option>"+
					"<option value='2' >2</option>"+
					"<option value='3'>3</option>"+
					"<option value='4'>4</option>"+
					"<option value='5'>5</option>"+
				"</select>";
				}else{
					noteData.innerHTML = "";
				}
				}
				</script>
			</td>
		</tr>


			<tr>
		 	<td></td>
		 	<td>
		 		 <input type="checkbox" value="caseCount" id="case1" onclick="onCaseButtonClick();"/>
		 	</td>
		 	<td></td>
		 </tr>
		<tr>
			<td>
				<span>商品名</span>
			</td>
			<td>
				<s:property value="session.buyItem_name.get(1)" /><br>
			</td>
		</tr>
		<tr>
			<td>
				<span>値段</span>
			</td>
			<td>
				<s:property value="session.buyItem_price[1]"/><span>円</span>
			</td>
		</tr>
		<tr>
			<td>
				<span>購入個数</span>
			</td>
			<td id="caseData">
			<script type="text/javascript">
			function onCaseButtonClick(){
				check2 = document.form1.case1.checked;
				caseData = document.getElementById("caseData");
				if(check2 == true){
				caseData.innerHTML =
					"<select name='caseCount' id='caseCount'>"+
					"<option value='1' selected='selected'>1</option>"+
					"<option value='2'>2</option>"+
					"<option value='3'>3</option>"+
					"<option value='4'>4</option>"+
					"<option value='5'>5</option>"+
				"</select>";
				}else{
					caseData.innerHTML = "";
				}
			}

			</script>
		</tr>



		<tr>
			<td>
				<span>支払い方法</span>
			</td>
			<td>
				<input type="radio" name="pay" value="1" checked="checked">現金
				<input type="radio" name="pay" value="2">クレジットカード
			</td>
		</tr>
		<tr>
			<td>
				<s:submit value="購入"/>
			</td>
		</tr>
	</table>
</s:form>


	<div>
		<p>前画面の戻る場合は<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
		<s:if test="session.loginGuestUserId == null">
		<p>マイページは<a href='<s:url action="MyPageAction"/>'>こちら</a></p>
		</s:if>


		<s:if test="session.loginGuestUserId != null">
		<p>ログインは<a href='<s:url action="LoginAction"/>'>こちらから</a></p>
		</s:if>


		<s:if test="session.loginGuestUserId != null">
		<s:property value="session.loginGuestUserId" /><p>a</p></s:if>
	</div>
</div>
</div>

<div id="footer">
	<div id="pr">
		</div>
</div>
</body>
</html>