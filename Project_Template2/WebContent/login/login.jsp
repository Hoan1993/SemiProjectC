<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/login.css">
<script type="text/javascript">
$('.message a').click(function(){
	   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
	});
</script>

</head>
<body>
<%-- <div align="center">	
<form name="frm" method="post" action="BoardServlet">
	<input type="hidden" name="command" value="board_login">

		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="submit" value="로그인" onclick="return loginCheck()">
					<input type="reset" value="다시작성">
					<input type="button" value="회원가입" onclick="location.href='BoardServlet?command=joinForm'">
				</td>
			</tr>
			<br /> <br />
			<tr>
				<td align="right">${message}</td>
			</tr>
		</table>
	</form>
</div> --%>


	<div class="login-page">
		<div class="form">
			<form class="register-form">
				<input type="text" placeholder="name" /> <input type="password"
					placeholder="password" /> <input type="text"
					placeholder="email address" />
				<button>create</button>
				<p class="message">
					Already registered? <a href="#">Sign In</a>
				</p>
			</form>
			<form  class="login-form" name="frm" action="<%=request.getContextPath() %>/board_loginOk.do" method="post">
				<input type="text" placeholder="username" name="id"/> <input type="password"
					placeholder="password" name="pwd"/>
				<button onclick="location.href='<%=request.getContextPath() %>/board_loginOk.do'">login</button>
				<p class="message">
					Not registered? <!-- <a href="#">Create an account</a> -->
					<a href="<%=request.getContextPath() %>/board_joinForm.do">Create an accout</a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>