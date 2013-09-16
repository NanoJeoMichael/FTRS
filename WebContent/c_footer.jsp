<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8" language="java"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script language="JavaScript" type="text/javascript">
		function test() {
			/*var infoHeight = document.body.s
			var infoHeight = document.getElementById("info").scrollHeight;
			var bottomHeight = document.getElementById("bottom").scrollHeight;
			var allHeight = document.documentElement.clientHeight;
			var bottom = document.getElementById("bottom");
			if ((infoHeight + bottomHeight) < allHeight) {
				bottom.style.position = "absolute";
				bottom.style.bottom = "0";
			} else {
				bottom.style.position = "";
				bottom.style.bottom = "";
			}*/
			var infoHeight = document.body.scrollHeight;
			var allHeight = document.documentElement.clientHeight;
			var bottom = document.getElementById("zan-footer");
			if (infoHeight = allHeight){
				bottom.style.position = "absolute";
				bottom.style.bottom = "0";
			}
			setTimeout(function() {
				test();
			}, 10);
		}
		test();
	</script>
</head>
<div id="zan-footer">
	<!-- Link -->
	<div id="link" class="row-fluid">
		<div class="container">
			<div class="link-1 span4 ">
				<div class="moduletable">
					<h4 class="">关于</h4>
					<ul class="nav menu ">
						<li class="item-102"><a href="#">关于FTRS</a></li>
						<li class="item-162"><a href="#">如何使用</a></li>
						<li class="item-163"><a href="#">网站地图</a></li>
					</ul>

				</div>
			</div>
			<div class="link-2 span4 ">
				<div class="moduletable">
					<h4 class="">联系我</h4>
					<ul class="nav menu ">
						<li class="item-178"><a href="#">邮箱：NanoJeoMichael@hotmail.com</a>
						</li>
						<li class="item-179"><a href="#">QQ:328846994</a></li>
					</ul>
				</div>
			</div>
			<div class="link-3 span4 ">
				<div class="moduletable">
					<h4 class="">友情链接</h4>
					<ul class="nav menu ">
						<li class="item-181"><a href="#">Artiano</a></li>
						<li class="item-182"><a href="#">BootStrap</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- //Link -->
		<div id="copyright" class="row-fluid">
			<div class="container">
				<div class="copyright">
					Copyright&copy;2013 Nano.Jeo.Michael All rights reserved
				</div>
			</div>
		</div>
	</div>
</div>