<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%
	boolean isLogin = false;
	if (session.getAttribute("loged").equals("true"))
		isLogin = true;
%>
<!DOCTYPE html>
<html>
<body>
	<%@ include file="msgBox.jsp"%>
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
						<a class="btn btn-link" href="#"><i
							class="icon-user icon-black"></i><strong><%="  " + session.getAttribute("userName")%></strong></a>
						<a class="btn btn-link" href="c_user.jsp"><i
							class="icon-wrench icon-black"></i><small>设置</small></a> <a
							onclick="confirm('你真的要退出吗？','index.jsp')" class="btn btn-link"><i
							class="icon-off icon-black"></i><small>退出</small></a>
					</div>
					<%
						} else {
					%>
					<div class="btn-group pull-right">
						<a data-toggle="modal" href="#loginWin" class="btn btn-link"><i
							class="icon-share icon-black"></i>登录</a> <a data-toggle="modal"
							href="#register" class="btn btn-link"><i
							class="icon-plus icon-black"></i>加入我们</a>
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
				<div class="control-group">
					<label class="control-label" for="inputEmail">用户名或邮箱</label>
					<div class="controls">
						<i class="icon-user"></i> <input type="text" id="inputEmail"
							name="username" placeholder="输入用户名或邮箱">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputPassword">密码</label>
					<div class="controls">
						<i class="icon-pencil"></i> <input type="password"
							id="inputPassword" name="pwd" placeholder="Password">
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<label class="checkbox"> <input type="checkbox">
							记住我
							<button type="submit" class="btn btn-primary">登录</button>
						</label>
					</div>
				</div>
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
				method="post">
				<div class="control-group">
					<label class="control-label" for="inputUser">用户名</label>
					<div class="controls">
						<i class="icon-user"></i> <input type="text" id="inputUser"
							placeholder="用户名" name="id"> <span class="help-inline">&nbsp;*</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="idnum">身份证</label>
					<div class="controls">
						<i class="icon-file"></i> <input type="text" id="idnum"
							name="idNum" placeholder="身份证号码"> <span
							class="help-inline">&nbsp;*</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputPassword">密码</label>
					<div class="controls">
						<i class="icon-pencil"></i> <input type="password"
							id="inputPassword" name="pwd" placeholder="密码"> <span
							class="help-inline">&nbsp;*</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputPassword">确认密码</label>
					<div class="controls">
						<i class="icon-pencil"></i> <input type="password"
							id="inputPassword" name="pwd" placeholder="确认密码"> <span
							class="help-inline">&nbsp;*</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="phone">手机号</label>
					<div class="controls">
						<i class="icon-globe"></i> <input type="text" id="phone"
							name="phone" placeholder="手机号"> <span class="help-inline">&nbsp;*</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputEmail">邮箱</label>
					<div class="controls">
						<i class="icon-envelope"></i> <input type="text" id="inputEmail"
							name="email" placeholder="邮箱"> <span class="help-inline">&nbsp;*</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="name">昵称</label>
					<div class="controls">
						<i class="icon-tag"></i> <input type="text" id="name" name="name"
							placeholder="昵称"> <span class="help-inline">&nbsp;*</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputAge">年龄</label>
					<div class="controls">
						<i class="icon-leaf"></i> <input type="text" id="inputAge"
							name="age" placeholder="年龄"> <span class="help-inline">&nbsp;*</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputSex">性别</label>
					<div class="controls">
						<i class="icon-tint"></i> <input type="radio" name="sex"
							id="inputSex" checked> <span class="help-inline">男</span>
						<input type="radio" name="sex" id="inputSex"> <span
							class="help-inline">女</span>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputAddress">地址</label>
					<div class="controls">
						<i class="icon-road"></i> <input type="text" id="inputAddress"
							name="address" placeholder="地址"> <span
							class="help-inline">&nbsp;*</span>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<label class="checkbox"> <input type="checkbox">
							我已阅读并同意许可条款&nbsp;&nbsp;
							<button type="submit" class="btn btn-primary">注册</button>
						</label>
					</div>
				</div>
			</form>
		</div>
		<div class="modal-footer">
			<button class="btn btn-warning" data-dismiss="modal">取消</button>
		</div>
	</div>
</body>
</html>