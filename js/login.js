// JavaScript Document
//支持Enter键登录
document.onkeydown = function (e) {
	if ($(".bac").length == 0) {
		if (!e) e = window.event;
		if ((e.keyCode || e.which) == 13) {
			var obtnLogin = document.getElementById("submit_btn")
			obtnLogin.focus();
		}
	}
}

$(function () {
	//提交表单
	$('#submit_btn').click(function () {
		show_loading();
		//var myReg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //邮件正则
		var myReg = new RegExp("^[0-9]*$");
		if ($('#email').val() == '') {
			show_err_msg('用户名还没填呢！');
			$('#email').focus();
		} else if (!myReg.test($('#email').val())) {
			show_err_msg('您的用户名格式错咯！');
			$('#email').focus();
		} else if ($('#password').val() == '') {
			show_err_msg('密码还没填呢！');
			$('#password').focus();
		} else {
			//ajax提交表单，#login_form为表单的ID。 如：$('#login_form').ajaxSubmit(function(data) { ... });
			//show_msg('登录成功咯！  正在为您跳转...', 'login.do');
			/*$.ajax({
				cache: true,
				type: "POST",
				url: 'login.do',
				data: $('#login_form').serialize(), // 你的formid
				async: false,
				error: function (request) {
					alert("Connection error");
				},
				success: function (data) {
*/

			window.location.href = "./admin/adminmain.html";
			/*
				}
			});
			*/
		}
	});
});