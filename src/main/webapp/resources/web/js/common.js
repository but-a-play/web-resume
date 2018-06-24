//$(document).ready(function(){
//	//导航选中
//	var pathName = location.pathname;
//	if(pathName.indexOf("template") > 0 || pathName.indexOf("ppt") > 0) {
//		currentSelect(1);
//	}else if(pathName.indexOf("editresume") > 0) {
//		currentSelect(0);
//	}else if(pathName.indexOf("hr") > 0 || pathName.indexOf("customize") > 0 ) {
//		currentSelect(2);
//	}else {
//		currentSelect(4);
//	}
//	//鼠标覆盖和离开头像事件
//	$('.jl-touxiang').hover(function(){
//		$('.jl-user-info').stop().show();					
//	},function(){
//		$('.jl-user-info').stop().hide();					
//	});	
//	//获取消息个数
//	if(getCookie("memberEmail")||getCookie("memberName")){
//		$.get(wbdcnf.base+"/common/get_message_notification_count/",function(data){
//			var $message_notification=$("#user_center i");
//			if(data>0){
//				$message_notification.show();
//			}else{
//				$message_notification.hide();
//			}
//		});
//	}else{
//		$("#user_center i").hide();
//	}
//	//百度打点数据
//	try{
//		$(document).on("click",".500dtongji",function(){
//			var lable=$(this).attr("data_track");
//			if(lable!=null&&lable!=""&&lable!=undefined){
//				window._hmt && window._hmt.push(['_trackEvent', lable, 'click']);
//			}
//		});
//	}catch(e){
//		console.log("统计埋点错误~");
//	}
//	try{
//		//图片延迟加载
//		$("http://static.500d.me/resources/500d/js/img.lazy").lazyload({
//		    threshold : 200
//		});
//	}catch(e){
//		console.log("图片延迟加载错误~");
//	}
//	try{
//		//商桥客服处理，如果没有没有在线人工客服标记，则隐藏客服
//		var $onlineFlag=$("#onlineFlag");
//		if($onlineFlag==null||$onlineFlag==undefined||$onlineFlag.length<=0){
//			var style_css='<style>#newBridge{display:none !important}</style>'
//			$("body").after($(style_css));
//		}
//	}catch(e){
//		console.log("商桥客服处理错误~");
//	}
//	
//});
//
////选中样式
//function currentSelect(index) {
//	$(".nav-li").removeClass("current").eq(index).addClass("current");
//}
//
///**
// * 购物车数量
// */
//function cartSize() {
//	var size = getCookie("cartSize");
//	if(!size)
//		size = getCartSize();
//	if(size && size > 0)
//		$("#cart").addClass("cur");
//	else
//		$("#cart").removeClass("cur");
//}
//function getCartSize() {
//	var size = 0;
//	$.ajax({async : false, url : wbdcnf.base + "/cart/size/", cache : false, type : "GET", success : function(data) {
//		size = data;
//	}});
//	return size;
//}


///** 回到顶部 **/
//function gotop(){
//    var gotop = '<div class="gotop 500dtongji" data_track="PC-通用-通用-全屏右侧-帮助浮标-返回顶部"></div>';
//    $("body").append(gotop);
//    $(".gotop").click(function(){$('html, body').animate({scrollTop:0}, 700);});
//    var min_height = 200;
//    $(window).scroll(function(){
//        var s = $(window).scrollTop();
//        if(s > min_height){
//            $(".gotop").fadeIn(100);
//        }else{
//            $(".gotop").fadeOut(100);
//        };
//    });
//};

/**
 * 登录信息
 */
//function loginMsg(userName, userHead) {
//	if(!userName) {
//		userHead = getCookie("memberHead");
//		userName = getCookie("memberName");
//		userEmail = getCookie("memberEmail");
//		userIsVerifyEmail = getCookie("memberIsVerifyEmail");
//		memberIsVerifyMobile = getCookie("memberIsVerifyMobile");
//		isVIP = getCookie("memberIsVIP");
//	}
//	if (userName != null || userEmail != null) {
//		if(userName == null || userName == "")
//			userName = "我的五百丁";
//		$("#login").hide(); // 登录按钮
//		$("#register").hide(); // 注册按钮
//		$("#login-register").hide(); // 登录和注册间隔符
//		$("#userName").text(userName).show(); // 显示名称
//		$("#myResume").show();	//显示“我的简历”
//		$("#userHead").show().find("img").attr("src", userHead); // 显示头像
//		//判断是否是会员
//		if(isVIP=="true") {
//			$("#userName").next().addClass("vip");	//高亮vip图标
//			$("#isVIP").show();
//			$("#isNotVIP").hide();
//		}else {
//			$("#userName").next().removeClass("vip");	//高亮vip图标
//			$("#isVIP").hide();
//			$("#isNotVIP").show();
//		}
//		$("#window_dialog").remove(); // 移除登录窗口
//		if(next_url) // 跳转到下一个页面
//			location.href = next_url;
//		if(add_login_success)
//			loginSuccess();
//		$("#user_logout").show().click(function(){ // 登出按钮事件
//			loginOut();
//		});
//		//是否验证
//		if(!isNull(userEmail)&&userEmail.indexOf("@")!=-1&&userIsVerifyEmail=="false"){//邮箱注册
//			$(".tips_div").find(".email_tips").show();
//			$(".tips_div").find(".mobile_tips").hide();
//		}else{
//			if(memberIsVerifyMobile=="false"){
//				$(".tips_div").find(".email_tips").hide();
//				$(".tips_div").find(".mobile_tips").show();
//			}
//		}
//		if(userIsVerifyEmail=="false"&&memberIsVerifyMobile=="false"){
//			$(".tips_div").show();
//			$(".message_notification").show();
//		}else{
//			$(".tips_div").hide();
//		}
//	} else {
//		$("#login").show(); // 登录按钮显示
//		$("#userHead").hide();	//隐藏头像
//	}
//}
////发送邮件
//function sendEmail(email,send_url,send_method){
//	var flag=false;
//	//发送邮件
//	$.ajax({
//		url: send_url,
//		type: send_method,
//		data: {"email":email},
//		dataType: "json",
//		async:false,
//		cache: false,
//		success: function(message) {
//			if(message.type=="success"){
//				flag=true;
//			}else{
//				layer.msg(message.content);
//			}
//		}
//	});
//	return flag;
//}	
///**
// * 注销登录
// */
//function loginOut() {
//	$.get(wbdcnf.base + "/logout/", function(data){
//		if(data.type == "success") {
//			$("#userHead").hide(); // 头像隐藏
//			$("#userName").hide(); // 用户名隐藏
//			$("#myResume").hide();	//隐藏“我的简历”
//			$(".ul_top_user").hide(); // 用户操作菜单隐藏
//			$(".m-top_user").hide(); // 用户操作菜单隐藏
//			
//			$("#login").show(); // 显示登录按钮
//			$("#register").show(); // 显示注册按钮
//			$("#login-register").show(); // 显示注册和登录间隔符
//			cartSize(); // 计算购物车
//			var synarr = $(data.content); // 同步登出论坛
//			synarr.each(function(index, ele) {
//			    $.getScript(ele.src, function(){});
//			});
//			location.reload();
//		} else {
//			var loaded = 0;
//			var synarr = $(data.content);
//			if(data.content != "" && synarr.length > 0) {
//				synarr.each(function(index, ele) {
//					$.getScript(ele.src, function(){
//						if (++loaded == synarr.length) {
//							location.href = wbdcnf.base + "/";
//						}
//					}).fail(function() {
//						location.href = wbdcnf.base + "/";
//				    });
//				});
//			} else {
//				location.href = wbdcnf.base + "/";
//			}
//		}
//	});
//}

/**
 * 文件大小验证
 */
//function checkSize(file, showAlert, max_size) {
//	if(!max_size)
//		max_size = 3;
//	var max_file_size = max_size * 1024 * 1024;
//	if(file && file.files && file.files[0] && file.files[0].size) {
//		var size = file.files[0].size;
//		if(size > max_file_size) {
//			if(showAlert)
//				alert("上传图片文件过大，请上传小于" + max_size + "M的文件！");
//			return false;
//		}
//	}
//	return true;
//}
///**
// * 百度推送
// */
//function baiduPoster() {
//    var bp = document.createElement('script');
//    bp.src = '../../../../push.zhanzhang.baidu.com/push.js'/*tpa=http://push.zhanzhang.baidu.com/push.js*/;
//    var s = document.getElementsByTagName("script")[0];
//    s.parentNode.insertBefore(bp, s);
//}
//function xssFilter(str){
//	//1校验JavaScript运行环境
//	if(str==null||str==""){
//		return;
//	}
//	str=str.trim();//去空格
//	str=str.toLowerCase();
//	str=str.replace(new RegExp("javascript:;","gm"),"");//移除全局的javascript:;标记
//	str=str.replace(new RegExp("javascript：;","gm"),"");
//	if(str.indexOf("<script")!=-1){
//		return "<script>";
//	}
//	if(str.indexOf("javascript:")!=-1){
//		return "javascript:";
//	}
//	if(str.indexOf("javascript：")!=-1){
//		return "javascript：";
//	}
//	if(str.indexOf("vbscript:")!=-1){
//		return "vbscript:";
//	}
//	if(str.indexOf("vbscript：")!=-1){
//		return "vbscript：";
//	}
//	if(str.indexOf("eval(")!=-1){
//		return "eval(";
//	}
//	if(str.indexOf("<body")!=-1){
//		return "<body>";
//	}
//	if(str.indexOf("document.write(")!=-1){
//		return "document.write";
//	}
//	if(str.indexOf("innerhtml(")!=-1){
//		return "innerHTML()";
//	}
//	if(str.indexOf("document.cookie")!=-1){
//		return "document.cookie";
//	}
//	if(str.indexOf("<iframe")!=-1){
//		return "<iframe>";
//	}
//	if(str.indexOf("<link")!=-1){
//		return "<link>";
//	}
//	if(str.indexOf("document.location")!=-1){
//		return "document.location";
//	}
//	if(str.indexOf("http://static.500d.me/resources/500d/js/location.href")!=-1){
//		return "http://static.500d.me/resources/500d/js/location.href";
//	}
//}
//function brower_check(){
//  try{
//	  // 用于帮助 GA 检测各种奇奇怪怪的浏览器
//	  // 参考：http://jeffshow.com/get-more-precise-browser-info-in-google-analytics.html
//	  var browserName = "Other";
//	  var ua = window.navigator.userAgent;
//	  browserRegExp = {
//	    Sogou : /SE\s2\.X|SogouMobileBrowser/,
//	    Explorer2345 : /2345Explorer|2345chrome|Mb2345Browser/,
//	    Liebao : /LBBROWSER/,
//	    QQBrowser : /QQBrowser/,
//	    Baidu : /BIDUBrowser|baidubrowser|BaiduHD/,
//	    UC : /UBrowser|UCBrowser|UCWEB/,
//	    MiuiBrowser : /MiuiBrowser/,
//	    Wechat : /MicroMessenger/,
//	    MobileQQ : /Mobile\/\w{5,}\sQQ\/(\d+[\.\d]+)/,
//	    Shoujibaidu : /baiduboxapp/,
//	    Firefox : /Firefox/,
//	    Maxthon : /Maxthon/,
//	    Se360 : /360SE/,
//	    Ee360 : /360EE/,
//	    TheWorld : /TheWorld/,
//	    Weibo : /__weibo__/,
//	    NokiaBrowser : /NokiaBrowser/,
//	    Opera : /Opera|OPR\/(\d+[\.\d]+)/,
//	    Edge : /Edge/,
//	    AndroidBrowser : /Android.*Mobile\sSafari|Android\/(\d[\.\d]+)\sRelease\/(\d[\.\d]+)\sBrowser\/AppleWebKit(\d[\.\d]+)/i,
//	    IE : /Trident|MSIE/,
//	    Chrome : /Chrome|CriOS/,
//	    Safari : /Version[|\/]([\w.]+)(\s\w.+)?\s?Safari|like\sGecko\)\sMobile\/\w{3,}$/,
//	  };
//	  for (var i in browserRegExp) {
//	    if (browserRegExp[i].exec(ua)) {
//	      browserName = i;
//	      break;
//	    }
//	  }
//	  //判断是否是国产双核浏览器，是的话，则判断是否是兼容模式
//	  var browserAgent   = (navigator.userAgent).toLocaleLowerCase();
//	    var two_kit=false;//是否是国产双核浏览器
//	    if(browserName.indexOf("Se360") != -1 || browserName.indexOf("Ee360") != -1 || browserName.indexOf("QQBrowser") != -1|| browserName.indexOf("Explorer2345") != -1|| browserName.indexOf("Sogou") != -1|| browserName.indexOf("Liebao") != -1) {
//	    	two_kit = true; //国产双核浏览器
//	    }
//	  	user_agent = navigator.userAgent.toLowerCase();
//	  	//当前是支持IE10以上的
//	  	var title="你的浏览器版本过低不支持在线制作。";
//	  	var content="本网站不支持您当前的浏览器版本，如果继续使用会影响编辑效果<br/>请将浏览器升级至最新版本<br/>或使用以下浏览器，以获得最佳使用体验。";
//	  	var is_show=false;
////	  	if(user_agent.indexOf("msie 9.0")>-1) {
////	    	is_show=true;
////	    }else 
//	    if (user_agent.indexOf("msie 7.0")>-1&&user_agent.indexOf("trident/5.0")>-1){
//	    	is_show=true;
//	    }else if (user_agent.indexOf("msie 8.0")>-1&&user_agent.indexOf("trident/5.0")>-1){
//	    	is_show=true;
//	    }else if(user_agent.indexOf("msie 8.0")>-1) {
//	    	is_show=true;
//	    }else if(user_agent.indexOf("msie 7.0")>-1&&user_agent.indexOf("trident/4.0")>-1){
//	    	is_show=true;
//	    }else if(user_agent.indexOf("msie 7.0")>-1){
//	    	is_show=true;
//	    }else if(user_agent.indexOf("msie 6.0")>-1){
//	    	is_show=true;
//	    }
//	    if(is_show){
//	    	if(two_kit){
//	    		title="你当前浏览器使用的是兼容模式";
//	    	  	content="本网站不支持您当前的浏览器的兼容模式，如果继续使用会影响编辑效果<br/>请你将浏览器模式调为极速模式<br/>或使用以下浏览器，以获得最佳使用体验。";
//	    	}
//	    	$("#brower_title_tips").html(title);
//	    	$("#brower_content_tips").html(content);
//	    	$("#browserModal").modal("show");
//	    }
//  }catch(e){
//	  console.log("浏览器版本检测失败");
//  }
//}
//function check_mobile(mobile){
//	var flag=false;
//	//发送邮件
//	$.ajax({
//		url: '/register/check_mobile/',
//		type: "GET",
//		data: {"mobile":mobile},
//		dataType: "json",
//		async:false,
//		cache: false,
//		success: function(bindFlag) {
//			if(bindFlag){
//				flag=true;
//			}
//		}
//	});
//	return flag;
//}
//function check_email(email){
//	var flag=false;
//	//发送邮件
//	$.ajax({
//		url: '/register/check_email/',
//		type: "GET",
//		data: {"email":email},
//		dataType: "json",
//		async:false,
//		cache: false,
//		success: function(bindFlag) {
//			if(bindFlag){
//				flag=true;
//			}
//		}
//	});
//	return flag;
//}
//function isNull(val){
//	if(val==""||val==null||val==undefined){
//		return true;
//	}else{
//		return false;
//	}
//}
//function getUrlParamString(name) { 
//	try{
//		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
//		var r = window.location.search.substr(1).match(reg); 
//		if (r != null) {
//			return unescape(r[2]);
//		}
//		return "";
//	}catch(e){
//		
//	}
//	return "";
//}
// 实现 复制到剪贴板 功能
//function copyToClipBoard(str){
//	var copyInput = $("<input type='text' value='http://www.500d.me/resume/"+ str +"/' style='opacity:0' id='copyText'>");
//	copyInput.appendTo("body");
//	document.getElementById("copyText").select();
//	document.execCommand("copy",false,null)
//	$("#copyText").remove();
//} 
//$(".copy_url_btn").click(function(){
//	var str = $(".ym-input").val();
//	copyToClipBoard(str);
//})
//--------推广统计--------------
//function getQueryString(name) {
//	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i");
//	var r = window.location.search.substr(1).match(reg);
//	if (r!=null) return (r[2]); return null;
//}
//$(function(){
//	try{
//		var sparam="";
//		var f = getQueryString("f");
//		if (f && f!=undefined){
//			sparam="f="+f;
//		}
//		var from = getQueryString("from");
//		if (from && from!=undefined){
//			if (f && f!=undefined){
//				sparam=sparam+"&";
//			}
//			sparam=sparam+"code="+from+"&isCover=true";
//		}
//		if (sparam && sparam!=undefined &&sparam!=""){
//			$.getScript("http://www.500d.me/index/setSource/?"+sparam,function(){});
//		}
//	}catch(e){
//			
//	}
//});		

//var base = base || {};
//base.main = base.main || {};
//base.main = {
//	init_:function(){
//		base.main.header_event();
//	},
//	header_event:function(){
//		$(document).on("click",".jl-header .jl-ej-nav .sj-btn",function(){
//			base.main.confirm_ext({
//				title:"",
//				content_html:"<span></span><p>微信扫一扫，开始制作你的简历</p>",					
//				modal_class:"index-mobile-content",
//				ok:"",
//				cancel:"",
//				onOk:function(){
//				
//				}
//		   });		    		
//		});
//	},
//	confirm_ext:function(options){
//				var settings = {
//						title:"操作提示标题",
//						content:"操作提示内容",
//						content_html:"",
//						modal_class:"tips-modal-content",
//						ok: "确定",
//						cancel: "取消",
//						onOk: null,
//						onCancel: null
//				};
//				$.extend(settings, options);
//				var html='<div class="modal fade" id="tips-common-modal">'+
//				'	<div class="modal-dialog-ext">'+
//				'		<div class="modal-content-ext show-swal2">'+
//				'			<div class="modal-header">'+
//				'				<span class="tips-title"></span>'+
//				'				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>'+
//				'			</div>'+
//				'			<div class="modal-body">'+
//				'				<span class="tips-content"></span>'+
//				'			</div>'+
//				'			<div class="modal-footer">'+
//				'				<button type="button"  class="button submit">确定</button><button type="button"  data-dismiss="modal" aria-hidden="true" class="button cancel">取消</button>'+
//				'			</div>'+
//				'		</div>'+
//				'	</div>'+
//				'</div>'
//				var $modal=$(html);
//				//组装弹框内容
//				$modal.find(".tips-title").text(settings.title);
//				$modal.find(".modal-content-ext").addClass(settings.modal_class);
//				$("#tips-common-modal").remove();
//				if(settings.content_html==""){
//					$modal.find(".tips-content").text(settings.content);
//				}else{
//					$modal.find(".tips-content").remove();
//					$modal.find(".modal-body").html(settings.content_html);
//				}
//				$modal.find("button.submit").text(settings.ok);
//				$modal.find("button.cancel").text(settings.cancel);
//				$modal.appendTo("body");
//				
//				var $confirm_btn=$("#tips-common-modal").find("button.submit");
//				var $cancel_btn=$("#tips-common-modal").find("button.cancel");
//				if ($confirm_btn != null) {
//					$confirm_btn.click(function() {
//						if (settings.onOk && typeof settings.onOk == "function") {
//							if (settings.onOk() != false) {
//								tips_modal_close();
//							}
//						} else {
//							tips_modal_close();
//						}
//						return false;
//					});
//				}
//				if ($cancel_btn != null) {
//					$cancel_btn.click(function() {
//						if (settings.onCancel && typeof settings.onCancel == "function") {
//							if (settings.onCancel() != false) {
//								tips_modal_close();
//							}
//						} else {
//							tips_modal_close();
//						}
//						return false;
//					});
//				}
//				$modal.modal("show");
//				//弹框关闭通用方法
//				function tips_modal_close(){
//					$modal.modal("hide");
//					$modal.remove();
//					$(".modal-backdrop").remove();
//					$("body").removeClass("suggestModal");
//					$("body").removeClass("modal-open");
//				}		
//
//	}
//}
//$(function(){
//	base.main.init_();//初始化对象
//});