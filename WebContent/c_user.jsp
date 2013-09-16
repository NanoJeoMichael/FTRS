<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户-设置</title>
<%@ include file="libraries.html"%>
</head>
<body>
	<%@ include file="c_header.jsp"%>
	<div class="page-header" style="padding-top: 60px">
		<h2 class="text-center">设置你的账户</h2>
	</div>
	<div class="tabbable tabs-left offset1">
		<ul class="nav nav-tabs">
			<li class=""><a href="#profile" data-toggle="tab"><i
					class="icon-book icon-black"></i>&nbsp;&nbsp;我的账户</a></li>
			<li class=""><a href="#setting" data-toggle="tab"><i
					class="icon-wrench icon-black"></i>&nbsp;&nbsp;账户设置</a></li>
			<li class="active"><a href="#record" data-toggle="tab"><i
					class="icon-plane icon-black"></i>&nbsp;&nbsp;消费记录</a></li>
		</ul>
		<div class="tab-content offset1 span11">
			<div class="tab-pane" id="profile">
				<div class="boxed-group">
					<h3>我的账户</h3>
					<div class="boxed-group-inner">
						<form class="form-horizontal" action="ClientAction?action=regist"
							method="post" style="padding-top: 20px">
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
						</form>
					</div>
				</div>
				<!-- delete -->
				<div class="boxed-group dangerzone">
					<h3>Delete Account</h3>
					<div class="boxed-group-inner">
						<p>
							Your account is currently an owner on these organizations: <strong>Artiano</strong>
						</p>
						<p>
							You must <a
								href="https://help.github.com/articles/transferring-organization-ownership">transfer
								ownership</a> or <a
								href="https://help.github.com/articles/deleting-an-organization-account">delete</a>
							these organizations before you can delete your user.
						</p>

						<p>
							<a href="#delete_account_confirmation" rel="facebox[.dangerzone]"
								class="button danger disabled tooltipped downwards"
								original-title="Transfer ownership or delete your organizations before deleting your account">
								Delete your account </a>
						</p>


						<div id="delete_account_confirmation" style="display: none">
							<h2 class="facebox-header">Make sure you want to do this</h2>
							<div class="facebox-danger">
								<span class="octicon octicon-alert"></span> This is extremely
								important. If you don't read this, unexpected bad things will
								most definitely occur.
							</div>

							<p>
								Deleting your account will delete any and <strong>all
									repositories (1)</strong>.
							</p>
							<p>
								Please review the <a href="/site/terms">Terms of Service</a>
								regarding account deletion.
							</p>

							<hr class="facebox-separator">

							<form accept-charset="UTF-8" action="/users/NanoJeoMichael"
								method="post">
								<div style="margin: 0; padding: 0; display: inline">
									<input name="_method" type="hidden" value="delete"><input
										name="authenticity_token" type="hidden"
										value="yWAI4GnXDU0Ig7XzIaYf+I1ovFxzgotppv/z7VvU1cc=">
								</div>
								<div class="js-dangerous-confirmation">
									<p>
										<label for="sudo_login">Enter your username:</label> <input
											type="text" name="sudo_login"
											class="input-block confirm-input"
											data-confirm="NanoJeoMichael">
									</p>
									<p>
										<label for="confirmation_phrase"> Type in the
											following phrase: <span
											class="confirmation-phrase do-not-copy-me">please
												delete my account forever</span>
										</label> <input type="text" name="confirmation_phrase"
											class="input-block">
									</p>
									<p>
										<label for="sudo_password"> Confirm your password: </label> <input
											class="input-block" id="sudo_password" name="sudo_password"
											type="password" value="">
									</p>

									<button type="submit"
										class="button button-block danger confirm-button" disabled="">Cancel
										plan and delete this account</button>
								</div>
							</form>
						</div>
						<p class="explain ejecting">
							Are you sure you don't want to just <a href="/account/billing">downgrade
								your account</a> to a <strong>FREE</strong> account? We won't charge
							your credit card anymore.
						</p>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="setting"></div>
			<div class="tab-pane active" id="record">
				<p>What up girl, this is Section C.</p>
			</div>
		</div>
	</div>
	<%@ include file="c_footer.jsp" %>
</body>
</html>