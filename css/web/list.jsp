<!-- 二级页面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--<%@page import="com.sh5d.dwk.entity.Article"%>-->
<%@page import="java.util.List"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0,maximum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>大汶口</title>
<meta name="description" content="" />
<meta name="keywords" content="">
<link rel="stylesheet" type="text/css" href="../css/web/base.css">
<link rel="stylesheet" type="text/css" href="../css/web/layout.css">

<script type="text/javascript" src="../js/jquery-1.8.2.min.js"></script>
</head>
<body>
	<div id="container">
		<div class="header">
			<div class="wrap clearfix">
				<a href="#" class="logo left"><img src="../images/web/logo.png" /></a>
				<ul id="ulMenu" class="menu left">
					<li><a href="../index.do">首页</a></li>
					<li><a href="../article/list.do?t=1">汶口古镇</a></li>
					<li><a href="../article/list.do?t=2">乡里汶舍</a></li>
					<li><a href="../article/list.do?t=3">汶口生活</a></li>
					<li><a href="../article/list.do?t=4">乡里一聚</a></li>
					<li><a href="../article/list.do?t=5">品牌介绍</a></li>
					<li><a href="../article/list.do?t=6">古镇资讯</a></li>
				</ul>
			</div>
		</div>
		<div class="banner lBan ">
			<div class="banShow ">
				<div class="banDiv"
					style="background-image: url(../images/web/pic_1.jpg);"></div>
				<div class="banDiv"
					style="background-image: url(../images/web/pic_2.jpg);"></div>
			</div>
			<div id="banNav"></div>
		</div>
		<div class="book-line">
			<div class="wrap">
				<form class="clearfix" action="../article/yuding.do" method="post">
					<strong class="left">Book online</strong> <i class="line left"></i>
					<span class="left bs">入住时间</span> <input type="text" class="left"
						onClick="WdatePicker()" value="2015-05-01" /> <span
						class="left bs">退房时间</span> <input type="text" class="left"
						onClick="WdatePicker()" value="2015-05-09" /> <span
						class="left bs">入住人数</span>
					<div class="bDown left">
						<em><span>2</span>成人</em>
						<ul>
							<li>1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
							<li>5</li>
						</ul>
					</div>
					<button class="right book-btn">预订</button>
				</form>
			</div>
		</div>
		<div class="container index-body">
			<div class="row">
				<div class="col-md-12">
					<div class="wlist">
						<ul class="clearfix">
							111
 -->
							<li class="pic ">


								<div class="w_item outer col-md-4 col-sm-6">
									111
									</div>
								</div>

							</li>

						}
			}
		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-2">
			<div class="foot_a clearfix wrap">
				<span class="left"> <img src="../images/web/logo.png" />
				</span>
				<div class="mb_lx right clearfix">
					<img src="../images/web/w1.png" class="right" />
					<p class="right">
						泰安大汶口<br /> 文化产业投资有限公司<br /> 0538-5887077<br /> dwk@126.com
					</p>
				</div>
			</div>
			<div class="foot_b text-center">©Copyright 2016 网站开发：上海悟惟
				SHANGHAI 5D InfoTech</div>
		</div>
		<script type="text/javascript" src="../js/plugin.js"></script>
		<script type="text/javascript" src="../js/common.js"></script>
		<script language="javascript" type="text/javascript"
			src="../content/js/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript">
		$(function() {
			$('.banShow').cycle({
				fx : 'fade',
				timeout : 5000,
				pause : 1,
				pager : '#banNav'
			});

			highlightMenu();
		})

		function highlightMenu() {
			var type = GetQueryString("t");

			if (type == "1") {
				$("#ulMenu li").eq(1).addClass("on");
			} else if (type == "2") {
				$("#ulMenu li").eq(2).addClass("on");
			} else if (type == "3") {
				$("#ulMenu li").eq(3).addClass("on");
			} else if (type == "4") {
				$("#ulMenu li").eq(4).addClass("on");
			} else if (type == "5") {
				$("#ulMenu li").eq(5).addClass("on");
			} else if (type == "6") {
				$("#ulMenu li").eq(6).addClass("on");
			} else {
				$("#ulMenu li").eq(0).addClass("on");
			}
		}
	</script>
	</div>
</body>
</html>