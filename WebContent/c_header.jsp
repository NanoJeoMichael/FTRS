<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%
	boolean isLogin = false;
	if (session.getAttribute("loged").equals("true"))
		isLogin = true;
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function checkRegist() {
		if (form1.name.value == "") {
			var x = document.getElementById("rname");
			form1.name.placeholder="昵称不能为空";
			x.className += " error";
			return false;
		}
		if (form1.pwd.value == "") {
			var x = document.getElementById("rpwd");
			form1.pwd.placeholder="密码不能为空";
			x.className += " error";
			return false;
		}
		if (form1.pwdConfirm.value == "") {
			var x = document.getElementById("rcpwd");
			form1.pwdConfirm.placeholder="请确认你的密码";
			x.className += " error";
			return false;
		}
		if (form1.email.value=="") {
			var x = document.getElementById("remail");
			form1.email.placeholder="邮箱不能为空";
			x.className += " error";
			return false;
		}
		if (form1.birthDay.value==""){
			var x = document.getElementById("rdate");
			form1.birthDay.placeholder="生日不能为空";
			x.className += " error";
			return false;
		}
		
	}
</script>
</head>
<body>
	<%@ include file="msgBox.jsp"%>
	<!-- 导航条 -->
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-target=".navbar-responsive-collapse"
					data-toggle="collapse"> </a> <a class="brand" href="#">FTRS</a>
				<div class="nav-collapse collapse navbar-responsive-collapse">
					<ul class="nav" contenteditable="false">
						<li><a href="client.jsp"><strong>首页</strong></a></li>
						<li><a href="#"><strong>链接</strong></a></li>
						<li><a href="#"><strong>链接</strong></a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#"><strong>下拉菜单 </strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">下拉导航1</a></li>
								<li><a href="#">下拉导航2</a></li>
								<li><a href="#">其他</a></li>
								<li class="divider">&nbsp;</li>
								<li class="nav-header">标签</li>
								<li><a href="#">链接1</a></li>
								<li><a href="#">链接2</a></li>
							</ul></li>
					</ul>

					<%
						if (isLogin) {
					%>
					<div class="btn-group pull-right">
						<a class="btn btn-link" href="c_user.jsp"><i
							class="icon-user icon-large"></i><strong><%="  " + session.getAttribute("userName")%></strong></a>
						<a class="btn btn-link" href="c_user.jsp"><i
							class="icon-wrench"></i><small>&nbsp;设置</small></a> <a
							onclick="confirm('你真的要退出吗？','index.jsp')" class="btn btn-link"><i
							class="icon-off icon-black"></i><small>&nbsp;退出</small></a>
					</div>
					<%
						} else {
					%>
					<div class="btn-group pull-right">
						<a data-toggle="modal" href="#loginWin" class="btn btn-link"><i
							class="icon-signin icon-black"></i><small>&nbsp;登录</small></a> <a
							data-toggle="modal" href="#register" class="btn btn-link"><i
							class="icon-plus icon-black"></i><small>&nbsp;加入我们</small></a>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</div>
	<!-- 登录窗体 -->
	<div id="loginWin" class="modal hide fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="display: none;">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h3 id="myModalLabel">
				<strong>登录</strong>
			</h3>
		</div>
		<div class="modal-body">
			<form class="form-horizontal" action="ClientAction?action=login"
				method="post">
				<fieldset>
					<div class="control-group">
						<!-- Prepended text-->
						<label class="control-label">用户名或邮箱</label>
						<div class="controls">
							<div class="input-prepend">
								<span class="add-on"><i class="icon-user"></i></span> <input
									class="span3" name="username" placeholder="输入用户名或邮箱"
									id="prependedInput" type="text">
							</div>
						</div>
					</div>
					<div class="control-group">
						<!-- Prepended text-->
						<label class="control-label">密码</label>
						<div class="controls">
							<div class="input-prepend">
								<span class="add-on"><i class="icon-key"></i></span> <input
									class="span3" name="pwd" placeholder="输入密码" id="prependedInput"
									type="password">
							</div>
						</div>
					</div>
					<!-- Button -->
					<div class="control-group">
						<label class="control-label"></label>
						<!-- Button -->
						<div class="controls">
							<button class="btn btn-primary">登录</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
		<div class="modal-footer">
			<button class="btn btn-warning" data-dismiss="modal">取消</button>
		</div>
	</div>
	<!-- 注册窗体 -->
	<div id="register" class="modal hide fade" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h4 id="myModalLabel">加入我们</h4>
		</div>
		<div class="modal-body">
			<form class="form-horizontal" action="ClientAction?action=regist"
				method="post" name="form1">
				<fieldset>
					<!-- 用户名 -->
					<div class="control-group" id="ruser">
						<!-- Prepended text-->
						<label class="control-label">用户名</label>
						<div class="controls">
							<div class="input-prepend">
								<span class="add-on"><i class="icon-user"></i></span> <input
									class="span3" name="id" placeholder="为任意字符" id="prependedInput"
									type="text">
							</div>
						</div>
					</div>
					<!-- 密码 -->
					<div class="control-group" id="rpwd">
						<!-- Prepended text-->
						<label class="control-label">密码</label>
						<div class="controls">
							<div class="input-prepend">
								<span class="add-on"><i class="icon-key"></i></span> <input
									class="span3" name="pwd" placeholder="至少8位任意字符"
									id="prependedInput" type="password">
							</div>
						</div>
					</div>
					<!-- 确认密码 -->
					<div class="control-group" id="rcpwd">
						<!-- Prepended text-->
						<label class="control-label">确认密码</label>
						<div class="controls">
							<div class="input-prepend">
								<span class="add-on"><i class="icon-key"></i></span> <input
									class="span3" name="pwdConfrim" placeholder="确认密码"
									id="prependedInput" type="password">
							</div>
						</div>
					</div>
					<!-- 邮箱 -->
					<div class="control-group" id="remail">
						<!-- Prepended text-->
						<label class="control-label">邮箱</label>
						<div class="controls">
							<div class="input-prepend">
								<span class="add-on"><i class="icon-envelope"></i></span> <input
									class="span3" name="email" placeholder="你的常用邮箱"
									id="prependedInput" type="email">
							</div>
						</div>
					</div>
					<!-- 昵称 -->
					<div class="control-group" id="rname">
						<!-- Prepended text-->
						<label class="control-label">昵称</label>
						<div class="controls">
							<div class="input-prepend">
								<span class="add-on"><i class="icon-book"></i></span> <input
									class="span3" name="name" placeholder="将用这个昵称显示你的信息"
									id="prependedInput" type="text">
							</div>
						</div>
					</div>
					<!-- 出生日期 -->
					<div class="control-group" id="rdate">
						<!-- Prepended text-->
						<label class="control-label">出生日期</label>
						<div class="controls">
							<div class="input-append date form_datetime">
								<input class="span3" type="text" value="" readonly
									name="birthDay"> <span class="add-on"><i
									class="icon-th"></i></span>
							</div>
							<script type="text/javascript">
								$(".form_datetime").datetimepicker({
									format : "yyyy-mm-dd"
								});
							</script>
						</div>
					</div>
					<!-- 性别 -->
					<div class="control-group">
						<label class="control-label">性别</label>
						<div class="controls">
							<!-- Inline Radios -->
							<label class="radio inline"> <input type="radio"
								value="男" name="sex" checked="checked"> 男
							</label> <label class="radio inline"> <input type="radio"
								value="女" name="sex"> 女
							</label> <label class="radio inline"> <input type="radio"
								value="不确定" name="sex"> 不确定
							</label>
						</div>
					</div>
					<!-- 许可条款 -->
					<div class="control-group" id="rok">
						<label class="control-label"></label>
						<!-- Multiple Checkboxes -->
						<div class="controls">
							<!-- Inline Checkboxes -->
							<label class="checkbox inline"> <input type="checkbox" name="agree"
								value="我已阅读并同意许可条款"> 我已阅读并同意许可条款
							</label>
						</div>
					</div>
					<!-- 注册 -->
					<div class="control-group">
						<label class="control-label"></label>
						<!-- Button -->
						<div class="controls">
							<button id="registBtn" type="submit" onclick="return checkRegist()" class="btn btn-success">注册</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
		<div class="modal-footer">
			<button class="btn btn-warning" data-dismiss="modal">取消</button>
		</div>
	</div>
</body>
</html>