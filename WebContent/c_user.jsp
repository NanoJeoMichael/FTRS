<%@page import="ftrs.entity.Client"%>
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
	<div class="tabbable tabs-left offset1" style="padding-top: 60px">
		<ul class="nav nav-tabs">
			<li class=""><a href="#profile" data-toggle="tab"><i
					class="icon-cogs"></i>&nbsp;&nbsp;我的账户</a></li>
			<li class=""><a href="#setting" data-toggle="tab"><i
					class="icon-wrench"></i>&nbsp;&nbsp;重要设置</a></li>
			<li class=""><a href="#record" data-toggle="tab"><i
					class="icon-plane"></i>&nbsp;&nbsp;消费记录</a></li>
			<li class="active"><a href="#bills" data-toggle="tab"><i
					class="icon-tags"></i>&nbsp;&nbsp;我的账单</a></li>
		</ul>
		<div class="tab-content offset1 span11">
			<!-- 设置账户 -->
			<div class="tab-pane" id="profile">
				<div class="boxed-group">
					<h3>我的账户</h3>
					<div class="boxed-group-inner">
						<form class="form-horizontal" style="padding-top: 20px">
							<fieldset>
								<div class="control-group">
									<!-- Prepended text-->
									<label class="control-label">用户名</label>
									<div class="controls">
										<div class="input-prepend">
											<span class="add-on"><i class="icon-user"></i></span> <input
												class="span6" name="id" placeholder="用户名"
												id="prependedInput" type="text">
										</div>
									</div>

								</div>
								<div class="control-group">
									<!-- Prepended text-->
									<label class="control-label">身份证</label>
									<div class="controls">
										<div class="input-prepend">
											<span class="add-on"><i class="icon-user-md"></i></span> <input
												class="span6" name="idNum" placeholder="身份证号码"
												id="prependedInput" type="text">
										</div>
									</div>

								</div>
								<div class="control-group">
									<!-- Prepended text-->
									<label class="control-label">手机号</label>
									<div class="controls">
										<div class="input-prepend">
											<span class="add-on"><i class="icon-mobile-phone"></i></span>
											<input class="span6" name="phone" placeholder="手机号码"
												id="prependedInput" type="text">
										</div>
									</div>

								</div>

								<div class="control-group">

									<!-- Prepended text-->
									<label class="control-label">邮箱</label>
									<div class="controls">
										<div class="input-prepend">
											<span class="add-on"><i class="icon-envelope"></i></span> <input
												class="span6" name="email" placeholder="邮箱"
												id="prependedInput" type="text">
										</div>
									</div>

								</div>

								<div class="control-group">

									<!-- Prepended text-->
									<label class="control-label">昵称</label>
									<div class="controls">
										<div class="input-prepend">
											<span class="add-on"><i class="icon-book"></i></span> <input
												class="span6" name="name" placeholder="昵称"
												id="prependedInput" type="text">
										</div>
									</div>

								</div>

								<div class="control-group">
									<!-- Prepended text-->
									<label class="control-label">出生日期</label>
									<div class="controls">
										<div class="input-append date form_datetime">
											<input class="span6" type="text" value="" readonly> <span
												class="add-on"><i class="icon-th"></i></span>
										</div>
										<script type="text/javascript">
											$(".form_datetime").datetimepicker(
													{
														format : "yyyy-mm-dd",
														pickTime : false
													});
										</script>
									</div>
								</div>

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

								<div class="control-group">
									<!-- Prepended text-->
									<label class="control-label">地址</label>
									<div class="controls">
										<div class="input-prepend">
											<span class="add-on"><i class="icon-road"></i></span> <input
												class="span6" name="address" placeholder="您的地址"
												id="prependedInput" type="text">
										</div>
									</div>

								</div>
								<div class="control-group">
									<label class="control-label"></label>

									<!-- Button -->
									<div class="controls">
										<button type="submit" class="btn btn-warning">修改</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
				<!-- delete -->
				<div class="boxed-group dangerzone">
					<h3>
						<i class="icon-warning-sign icon-2x"></i>&nbsp;注销账户
					</h3>
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
			<!-- 重要设置 -->
			<div class="tab-pane" id="setting">
				<div class="boxed-group">
					<h3>更改密码</h3>
					<div class="boxed-group-inner">
						<p class="text-center" style="padding-top: 10px">你可以更改你的密码，使得你自己更加方便的记住或者使用。</p>
						<form class="form-horizontal">
							<fieldset>
								<div class="control-group">
									<!-- Prepended text-->
									<label class="control-label">原始密码</label>
									<div class="controls">
										<div class="input-prepend">
											<span class="add-on"><i class="icon-key"></i></span> <input
												class="span6" name="pwd" placeholder="原始密码"
												id="prependedInput" type="text">
										</div>
									</div>
								</div>
								<div class="control-group">
									<!-- Prepended text-->
									<label class="control-label">新密码</label>
									<div class="controls">
										<div class="input-prepend">
											<span class="add-on"><i class="icon-key"></i></span> <input
												class="span6" name="pwd" placeholder="密码"
												id="prependedInput" type="text">
										</div>
									</div>
								</div>
								<div class="control-group">
									<!-- Prepended text-->
									<label class="control-label">确认密码</label>
									<div class="controls">
										<div class="input-prepend">
											<span class="add-on"><i class="icon-key"></i></span> <input
												class="span6" name="pwd" placeholder="确认密码"
												id="prependedInput" type="text">
										</div>
										<p class="help-inline">*确认你的密码</p>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label"></label>
									<!-- Button -->
									<div class="controls">
										<button type="submit" class="btn btn-success">修改</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
				<div class="boxed-group">
					<h3>我的邮箱</h3>
					<div class="boxed-group-inner">
						<div style="padding-top: 10px;">
							<ul>
								<li><span class="badge badge-important">你当前的Email：<%=((Client) session.getAttribute("client")).getEmail()%></span></li>
								<li class="divider"></li>
								<li style="padding-top: 10px"><p>你可以更改你的邮箱，以便你收到我们的信息：</p></li>
								<li>
									<form class="form-horizontal">
										<fieldset>
											<div class="control-group">
												<!-- Prepended text-->
												<label class="control-label">新的Email</label>
												<div class="controls">
													<div class="input-prepend">
														<span class="add-on">@</span> <input class="span4"
															placeholder="你新的邮箱" id="prependedInput" type="text">
													</div>
													<button class="btn btn-info help-inline">更改</button>
												</div>
											</div>
										</fieldset>
									</form>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 消费记录 -->
			<div class="tab-pane" id="record">
				<div class="boxed-group">
					<h3>我的消费</h3>
					<p class="text-center" style="padding-top: 10px">选择一项你的消费记录，点击查看明细以查看你的详细消费记录</p>
					<div class="boxed-group-inner">
						<table class="table table-hover table-striped table-condensed">
							<thead>
								<tr>
									<th>选择</th>
									<th>时间</th>
									<th>出发时间</th>
									<th>起降机场</th>
									<th>消费金额</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input name="select" type="radio" /></td>
									<td>TB - Monthly</td>
									<td>01/04/2012</td>
									<td>
										<div>重庆江北机场</div>
										<div>
											<small>南苑机场</small>
										</div>
									</td>
									<td>0.0</td>
								</tr>
								<tr class="success">
									<td><input name="select" type="radio" /></td>
									<td>TB - Monthly</td>
									<td>01/04/2012</td>
									<td>Approved</td>
									<td>0.0</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="text-right"
						style="padding-top: 10px; padding-right: 10px">
						<button type="button" class="btn btn-success btn-mini">查看明细</button>
					</div>
					<div class="text-center">
						<div class="pagination pagination-mini">
							<ul>
								<li><a href="#">上一页</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">下一页</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- 订单信息 -->
			<div class="tab-pane active" id="bills">
				<div class="boxed-group dangerzone">
					<h3>我的订单</h3>
					<p
						style="padding-top: 10px; padding-right: 10px; padding-left: 10px">
						&nbsp;&nbsp;请尽快前往指定地点取票，如果没有在<strong>到期时间</strong>之前将票取出，系统将取消你的订单。
						你也可以点击<strong>选择</strong>然后点击
						<strong>退票</strong>
						或者<strong>改签</strong> 进行相应的操作
					</p>
					<div class="boxed-group-inner">
						<table class="table table-condensed table-hover table-striped">
							<thead>
								<tr>
									<th>选择</th>
									<th>乘机人身份证</th>
									<th>出发时间</th>
									<th>到期时间</th>
									<th>航班</th>
									<th>状态</th>
									<th>折扣</th>
									<th>金额</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="radio"></td>
									<td>430581199209075537</td>
									<td>
										2013-9-10
									</td>
									<td><div style="color:red">2013-9-20</div></td>
									<td><a href="#">A815</a></td>
									<td>未取</td>
									<td>常价</td>
									<td>¥<strong>888</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div>
						<div class="text-right"
							style="padding-top: 10px; padding-right: 10px">
							<a class="btn btn-info btn-mini">修改</a>
							<a class="btn btn-danger btn-mini">退票</a> <a
								class="btn btn-warning btn-mini">改签</a>
						</div>
					</div>
					<div class="text-center">
						<div class="pagination pagination-mini">
							<ul>
								<li><a href="#">上一页</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">下一页</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="c_footer.jsp"%>
</body>
</html>