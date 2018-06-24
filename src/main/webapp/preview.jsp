<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="org.apache.shiro.SecurityUtils"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html class="cv-preview">
<head>
<base href="<%=basePath%>"></base>
<meta charset="UTF-8">
<META NAME="ROBOTS" CONTENT="noindex,nofollow">
<meta name="robots" content="noarchive">
<title>简历题目</title>
<link href="resources/plugin/cropper/cropper.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/web/css/layer.css" />
<link rel="stylesheet" href="resources/web/editresume/css/base.css" />
<link rel="stylesheet" href="resources/web/common/css/common.css" />
<link rel="stylesheet"
	href="resources/web/cvresume/css/common.css?v=111" />
<link rel="stylesheet" href="resources/web/cvresume/css/parts_css.css" />
<link rel="stylesheet" href="resources/web/cvresume/css/jm0203.css" />
<script type="text/javascript" src="resources/web/js/jquery.min.js?v=1"></script>
<script type="text/javascript"
	src="resources/web/editresume/jquery-ui.min.js?v=1"></script>
<script type="text/javascript"
	src="resources/web/editresume/cropper.min.js?v=1"></script>
<script src="resources/web/editresume/modal.js" type="text/javascript"></script>
<script type="text/javascript"
	src="resources/web/js/common_ext.js?v=323112"></script>
<script type="text/javascript" src="resources/web/js/layer.js?v=1"></script>
<script type="text/javascript"
	src="resources/web/cvresume/js/jquery.s2t.js"></script>
<script type="text/javascript" src="resources/web/js/utils.js?v=4"></script>
<script type="text/javascript"
	src="resources/web/cvresume/js/precvedit.js?v=2112"></script>
<script type="text/javascript"
	src="resources/web/cvresume/js/preview.js?v=14112"></script>
</head>
<body class="cv-preview">
	<!--在线编辑6.2.0 新增-->
	<div class="release_operation">

		<div class="operation_main">
			<!--下载-->
			<div class="download current">
				<a class=" 500dtongji" data-show-vip-type="resume"
					data_track="PC-在线制作-下载页（文档编辑页）-右侧按钮-右侧按钮-下载简历" data_auth="download"
					href="javascript:;" id="releaseDownloadPDFBtn"
					data_visitid="9091088665" data_id="4863348"><i class="icon"></i>下载简历</a>
			</div>
			<!--分享-->
			<!-- 			<div class="share "> -->
			<!-- 				<a class="500dtongji" data_track="PC-在线制作-下载页（文档编辑页）-右侧按钮-右侧按钮-简历分享" -->
			<!-- 					href="#" data-toggle="modal" data-target="#shareResume-modal"><i></i>简历分享</a> -->
			<!-- 			</div> -->
			<!--切换简历 -->
			<!-- 			<div class="resume_type "> -->
			<!-- 				切换文档简历时使用 doc_resume -->
			<!-- 				<span class="current">文档简历</span><a href="javascript:;" -->
			<!-- 					class="doc_resume 500dtongji" -->
			<!-- 					data_track="PC-在线制作-下载页（文档编辑页）-右侧按钮-右侧按钮-切换简历"><i></i></a><span -->
			<!-- 					class="">手机简历</span> -->
			<!-- 			</div> -->
			<!--二维码 -->
			<!-- 			<div class="QR_code "> -->
			<!-- 				其他人预览加class：other_code -->
			<!-- 				<span class="gw">【微信扫一扫】</span> <span class="gw">手机上也可以编辑简历</span> <span -->
			<!-- 					class="bjl">本简历来自五百丁<br />超过300万优秀人才的选择 -->
			<!-- 				</span> -->
			<!-- 			</div> -->
		</div>
	</div>
	<!--在线编辑6.2.0 新增end-->


	<!--模态框写这里-->
	<div class="wbdCv-modals">
		<!--分享简历-->
		<div class="modal fade smallmodal" id="shareResume-modal">
			<div class="modal-dialog">
				<div class="modal-content share-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close 500dtongji"
							data_track="PC-通用-简历分享弹框-文档简历-文档简历-关闭" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">分享简历</span>
					</div>
					<div class="modal-body">
						<span class="shareTips">将链接通过QQ、微信等任何方式发给相关人等，</span> <span
							class="shareTips">对方即可查看简历</span>
						<div class="shareContent">
							<span>http://www.500d.me/cvresume/</span> <input
								class=" 500dtongji" data-show-vip-type="resume"
								data_track="PC-通用-简历分享弹框-文档简历-文档简历-编辑域名" data_auth="set_domain"
								type="text" id="visitid" value="9091088665"> <a
								href="javascript:;" class="shareUrl 500dtongji"
								data_track="PC-通用-简历分享弹框-文档简历-文档简历-复制链接" id="copyUrl">复制链接</a>
						</div>
					</div>
					<div class="modal-footer">
						<span class="shareTips">注意：请确认本简历的访问权限为「所有人」或「密码访问」， </span><span
							class="shareTips">否则外部人士将无法查看。</span>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade promptModal in" id="preview_qrcode_tips">
			<div class="modal-dialog">
				<div class="modal-content clearfix">
					<div id="preview_qrcode_image">
						<a href="javascript:;" class="close_icon"></a> <span>请使用微信扫描二维码查看简历</span>
						<img class="qrImg"
							src="http://wubaiding.bj.bcebos.com/upload/image/201804/14/73cabbdf-6264-4e8b-8fbd-11f0a8a7f1b0.png">
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" id="resume_content" name="resume_content"
		value="<c:out value="${resume_content}"/>">
	<!--简历编辑区域-->
	<div id='canvas' class='wbdCv-container resume'>
		<%@ include file="/resume206.jsp"%>
	</div>
	<form id='resumeHtml' action='/web-resume/file/pdf.jhtml' 
		class='hidden' method='post'>
		<input name='resumeHtml' value="" /> <input type="submit" />
	</form>
	<!--联系我模块-->
	<div class="contactItem hidden" id="resume_contact">
		<dl>
			<dt class="clearfix ">
				<span><div class="resume_lang module_item_title"
						for-key="resume_contact" data-placeholder="联系我"
						data-textLang="contact" data-placeLang="contact">联系我</div></span>
			</dt>
			<dd class="clearfix">
				<div class="contact-con">
					<div class="disc resume_contact_desc" contenteditable="true"
						data-placeholder-tips="在这里留言，我将尽快联系你。" data-textLang="contactTip"
						data-placeLang="contactTip"></div>
					<div class="contact-main">
						<div class="name resume_contact_name" contenteditable="true"
							data-placeholder="姓名" data-textLang="contactName"
							data-placeLang="contactName"></div>
						<div class="phone resume_contact_mobile" contenteditable="true"
							data-placeholder="电话" data-textLang="contactEmail"
							data-placeLang="contactEmail"></div>
						<div class="text resume_contact_content" contenteditable="true"
							data-placeholder-tips="留言内容。" data-textLang="contactMsg"
							data-placeLang="contactMsg"></div>
						<button class="btn 500dtongji"
							data_track="PC-在线制作-文档编辑页-中间简历编辑-联系我-发送" data-textLang="send">发送</button>
					</div>
				</div>
			</dd>
		</dl>
	</div>
	<script>
		$(function() {
			$("#resume_contact .btn").click(function() {
				cvresume.main.contact_me(4863348);
			});
			$("div[data-placeholder-tips]").each(function(index, ele) {
				var curhtml = $(ele).html();
				if (cvresume.main.is_empty(curhtml)) {
					$(ele).html($(ele).attr("data-placeholder-tips"));
				}
			})
			$(document).on("focus", "div[data-placeholder-tips]", function() {
				var curhtml = $(this).html();
				if ($(this).attr("data-placeholder-tips") == curhtml) {
					$(this).html("");
				}
			})
			$(document).on("blur", "div[data-placeholder-tips]", function() {
				var curhtml = $(this).html();
				if (cvresume.main.is_empty(curhtml)) {
					$(this).html($(this).attr("data-placeholder-tips"));
				}
			})
		});
	</script>
	<div class="bottom-modal show-swal3 zhaopin_bottom"
		style="display: none; bottom: 0;">
		<span class="close"></span><span class="zhaopin_bg"></span><a
			href="http://zhaopin.500d.me" class="zhaopin_link 500dtongji"
			data_stack="发布页-招聘广告-立即查看">立即查看</a>
	</div>
	<script>
		$(function() {
			cvresume.main.resume_release_pageInit();
			common.main.repairResumeLeftHeight();
			if (common.main.getUrlParamsValue("device") == "wap") {
				$(".share [data-target='#shareResume-modal']").attr(
						"data-target", "#preview_qrcode_tips");
				$("#preview_qrcode_tips").on('click', function() {
					$("#preview_qrcode_tips").modal("hide");
				})
			}
			common.main.pagination_and_magnifier();//在线编辑6.2.0新增 - 分页和图片放大镜
		});
		$(function() {
			$('.zhaopin_bottom .close').on('click', function() {
				$(this).parent('.zhaopin_bottom').css('bottom', '-350px')
			});
		});

		function sub() {
	
			$.ajax({
				type : "POST",
				url : "/web-resume/file/pdf.jhtml",
				data : $('#resumeHtml').serialize(),
				async : false,
				error : function(request) {
					alert("Connection error:" + request.error);
				},
				success : function(data) {
					alert("SUCCESS!");
				}
			});

			return false;
		}
	</script>
</body>

</html>
