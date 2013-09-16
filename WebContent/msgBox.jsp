<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<div id="MsgBox" class="modal hide fade" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">×</button>
		<h3 id="myModalLabel">消息</h3>
	</div>
	<div class="modal-body">
		<p id="message-data" class="warning"></p>
	</div>
	<div class="modal-footer">
		<form action="" id="message-ok">
			<button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
			<button class="btn btn-primary" type="submit">确定</button>
		</form>
		<!-- 
		<a id="message-ok" class="btn btn-primary" data-dismiss="modal" aria-hidden="true">确定</a>
		-->
	</div>
</div>