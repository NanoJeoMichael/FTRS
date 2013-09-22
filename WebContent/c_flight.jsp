<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<%@ include file="c_header.jsp"%>
<body>
	<div class="container-fluid"
		style="padding-right: 20px; padding-top: 50px">
		<div class="row-fluid">
			<div class="span12">
				<div class="row-fluid">
					<div class="span2">
						<div class="span2" style="position: fixed; padding-top: 30px">
							<%@ include file="c_search.jsp"%>
						</div>
					</div>
					<div class="span10">
						<div class="boxed-group">
							<h3><i class="icon-plane icon-2x"></i>&nbsp;机票搜索结果</h3>
							<p class="text-center" style="padding-top: 10px">选择一项你的消费记录，点击查看明细以查看你的详细消费记录</p>
							<div class="boxed-group-inner">
								<table class="table table-hover table-striped table-condensed">
									<thead>
										<tr>
											<th>航班信息</th>
											<th>起降时间</th>
											<th>起降机场</th>
											<th>最低价格</th>
											<th>订票</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><div>南方航空公司</div><div>空客320（中）</div></td>
											<td><div>20:30</div><div>23:40</div></td>
											<td><div>江北机场</div><div>首都机场</div></td>
											<td>¥<strong>888</strong></td>
											<td><button class="btn btn-primary btn-small">订票</button></td>
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
		</div>
	</div>
	<%@ include file="c_footer.jsp" %>
</body>
</html>