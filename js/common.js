$(function(){
	$('.bDown').hover(function(){
		$(this).find('ul').stop(true,true).slideToggle();
	})
	$('.bDown li').click(function(){
		$('.bDown em span').text($(this).text());
	})
})


function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}