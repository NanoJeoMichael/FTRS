<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="libraries.html"%>
</head>
<body>
	<div class="well">
		<form action="SearchTicket" method="post">
			<legend>查询机票</legend>
			<p>城市</p>
			<div class="input-prepend">
				<span class="add-on"> <i class="icon-map-marker"></i>
				</span> <input id="prependedInput" class="span9" type="text" name="goCity"
					placeholder="出发城市">
			</div>
			<div class="input-append">
				<input id="appendedInput" type="text" class="span9" name="reachCity"
					placeholder="到达城市">
				<span class="add-on"> <i class="icon-map-marker"></i>
				</span>
			</div>
			<p>时间</p>
			<div class="input-append date form_datetime">
				<input class="span9" type="text" placeholder="出发日期" readonly name="goTime">
				<span class="add-on"><i class="icon-th"></i></span>
			</div>
			<script type="text/javascript">
				$(".form_datetime").datetimepicker({
					format : "yyyy-mm-dd hh:ii"
				});
			</script>
			<div>
				<button class="btn btn-primary btn-mini pull-right" type="submit">
					<i class="icon-search"></i>&nbsp;查询
				</button>
			</div>
		</form>
	</div>
</body>
</html>