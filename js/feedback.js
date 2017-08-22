function addFeedback(){
	
	var str=document.getElementById('feedback').value;
	
	if(str.length<=0){
		alert('提交的反馈与建议不能为空');
	}
	else if(str.length>500){
		alert('提交的反馈与建议不能超过500个字符');
	}
	else{
		window.location="addFeedback?content="+str;
	}
};	

