$(function() {
	/***************************************************************************************************
	 * 热键监听
	 * 监听容器元素需标识tag=listen_hotkey，触发的元素标识tag=submit
	 ***************************************************************************************************/
	$(document).on("keydown","[tag=listen_hotkey]",function(e){
		//回车键
		if(e.keyCode == 13){
			$(this).find("[tag=submit]").click();
			return false;
		}
	});
	
});
