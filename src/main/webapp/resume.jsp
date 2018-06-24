<!DOCTYPE html>
<%@page import="org.apache.shiro.SecurityUtils"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html class="wbd_cvresume_edit">
<head>
<base href="<%=basePath%>"></base>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="format-detection" content="telephone=no" />
<meta name="renderer" content="webkit" />
<meta name="keywords" content="在线编辑,简历在线编辑" />
<meta name="description" content="简历在线编辑，多个主题选择，不同主题导出不同简历。" />
<title>在线编辑简历模板</title>
<link href="resources/plugin/cropper/cropper.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/web/css/layer.css" />
<link rel="stylesheet" href="resources/web/css/animate.css" />
<link rel="stylesheet" href="resources/web/editresume/css/base.css?v=12" />
<link rel="stylesheet" href="resources/web/fancybox/jquery.fancybox.css" />
<link rel="stylesheet" href="resources/web/common/css/common.css?v=371" />
<link rel="stylesheet" href="resources/web/cvresume/css/common.css?v=112" />
<link rel="stylesheet" href="resources/web/cvresume/css/parts_css.css" />
<link rel="stylesheet" href="resources/web/cvresume/css/edit.css?v=100" />

<script type="text/javascript" src="resources/web/js/jquery.min.js?v=1"></script>
<script type="text/javascript"
	src="resources/web/editresume/jquery-ui.min.js?v=1"></script>
<script type="text/javascript"
	src="resources/web/editresume/cropper.min.js?v=1"></script>
<script type="text/javascript"
	src="resources/web/js/bootstrap.min.js?v=1"></script>
<script type="text/javascript" src="resources/web/js/layer.js?v=1"></script>
<script type="text/javascript"
	src="resources/web/cvresume/js/jquery.s2t.js"></script>
<script type="text/javascript" src="resources/web/js/utils.js?v=4"></script>
<script type="text/javascript" src="resources/web/js/common_ext.js?v=1110"></script>
<script type="text/javascript"
	src="resources/web/fancybox/jquery.fancybox.pack.js?v=1"></script>
<script type="text/javascript"
	src="resources/web/cvresume/js/cvedit.js?v=2202"></script>
<script type="text/javascript"
	src="resources/web/cvresume/js/resume.js?v=50"></script>
<script type="text/javascript"
	src="resources/web/cvresume/js/jquery.autocompleter.js"></script>
<script type="text/javascript" src="resources/web/cvresume/js/school.js"></script>
<script type="text/javascript"
	src="resources/web/js/jquery.qrcode.min.js"></script>
<script type="text/javascript"
	src="resources/web/cvresume/js/sycn_resume_v5.js"></script>
</head>
<body>
	<!--编辑页 上 左 右模块-->
	<div class="wbdCv-toolbars">
		<input class="itemType" type="hidden" value="doc" />
		<div class="wbdCv-header clearfix">
			<!-- 左上角logo -->
			<div class="logo 500dtongji" data_track="PC-在线制作-文档编辑页-顶部导航-左上角-Logo">
				<a href="#"><img src="resources/web/cvresume/images/logo.png" /></a>
			</div>

			<div class="set_resume_name">
				<input type="text" placeholder="给简历命个名吧" name="resume_name">
			</div>

			<div class="liveupdate">
				<span style="color: #ccc">文档将实时更新</span>
			</div>
			<!--顶部编辑风格设置工具栏 -->
			<div class="btn-outer" id="textExecCommand">
				<div class="btn-bar">
					<div class="btn-group">
						<a href="javascript:;" data-toggle="tooltip"
							data-placement="bottom" title="字体颜色" class="foreColor 500dtongji"
							data_track="在线制作-描述模块编辑工具栏-字体颜色按钮"></a> <a href="javascript:;"
							data-toggle="tooltip" data-placement="bottom" title="粗体"
							class="Bold 500dtongji" data_track="在线制作-描述模块编辑工具栏-粗体按钮"></a> <a
							href="javascript:;" data-toggle="tooltip" data-placement="bottom"
							title="斜体" class="Italic 500dtongji"
							data_track="在线制作-描述模块编辑工具栏-斜体按钮"></a> <a href="javascript:;"
							data-toggle="tooltip" data-placement="bottom" title="下横线"
							class="Underline 500dtongji" data_track="在线制作-描述模块编辑工具栏-下横线按钮"></a>
						<div class="foreColor_list">
							<div class="default_color">
								<i class="selected"></i><span>默认</span>
							</div>
							<div class="other_color">
								<i></i> <i></i> <i></i> <i></i> <i></i> <i></i> <i></i> <i></i>
								<i></i> <i></i> <i></i> <i></i> <i></i> <i></i> <i></i> <i></i>
								<i></i> <i></i> <i></i> <i></i> <i></i> <i></i> <i></i> <i></i>
							</div>
						</div>
					</div>
					<div class="btn-group">
						<a href="javascript:;" data-toggle="tooltip"
							data-placement="bottom" title="居左" class="JustifyLeft 500dtongji"
							data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-居左"></a> <a
							href="javascript:;" data-toggle="tooltip" data-placement="bottom"
							title="居中" class="Justifycenter 500dtongji"
							data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-居中"></a> <a
							href="javascript:;" data-toggle="tooltip" data-placement="bottom"
							title="居右" class="JustifyRight 500dtongji"
							data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-居右"></a>
					</div>
					<duv class="btn-group"> <a href="javascript:;"
						data-toggle="tooltip" data-placement="bottom" title="无序列表"
						class="InsertUnorderedList 500dtongji"
						data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-无序列表"></a> <a
						href="javascript:;" data-toggle="tooltip" data-placement="bottom"
						title="有序列表" class="InsertOrderedList 500dtongji"
						data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-有序列表"></a> <a
						href="javascript:;" data-toggle="tooltip" data-placement="bottom"
						title="右缩进" class="Indent 500dtongji"
						data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-右缩进"></a> <a
						href="javascript:;" data-toggle="tooltip" data-placement="bottom"
						title="左缩进" class="Outdent 500dtongji"
						data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-左缩进"></a> </duv>
					<div class="btn-group">
						<button type="button" data-toggle="tooltip"
							data-placement="bottom" title="超链接" class="CreateLink 500dtongji"
							data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-超链接"></button>
						<a href="javascript:;" data-toggle="tooltip"
							data-placement="bottom" title="格式刷"
							class="FormatPainter 500dtongji"
							data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-格式刷"></a> <a
							href="javascript:;" data-toggle="tooltip" data-placement="bottom"
							title="后撤" class="Undo 500dtongji"
							data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-后撤"></a> <a
							href="javascript:;" data-toggle="tooltip" data-placement="bottom"
							title="前进" class="Redo 500dtongji"
							data_track="PC-在线制作-文档编辑页-顶部编辑功能-顶部编辑功能-前进"></a>
					</div>
				</div>
			</div>
			<!--顶部实时保存进度条 -->
			<div class="progressBar">
				<div class="progress"></div>
			</div>
		</div>
		<div class="wbdCv-leftbar">
			<!--新版编辑器左侧工具栏-->
			<!--简历发布||导出-->
<!-- 			href="javascript:;" -->
			<div class="publish">
				<a class="500dtongji" href="javascript:;"
					data_track="PC-在线制作-文档编辑页-左侧设置-左侧设置-导出" data-value=""
					target="_blank">导出</a>
			</div>
			<!--简历内容编辑器-->
			<div class="resume_content_editor">
				<ul>
					<!--模块管理唤起按钮可能需要设置其他属性-->
					<li class="modal_manager"><a href="javascript:;"
						data-value="文档编辑页"><i class="icon"></i><span>模块管理</span></a></li>
					<li class="ghmb"><a href="javascript:;"
						id="change_temlate_btn" data_auth='change' class="500dtongji"
						data-show-vip-type="resume"
						data_track="PC-在线制作-文档编辑页-左侧设置-左侧设置-更换模板"><i class="icon"></i><span>更换模板</span></a></li>
					<!-- 					<li class="ghmb"><a href="javascript:;" -->
					<!-- 						id="change_temlate_btn" data_auth='change' -->
					<!-- 						class="500dtongji wbd-vip-lock" data-show-vip-type="resume" -->
					<!-- 						data_track="PC-在线制作-文档编辑页-左侧设置-左侧设置-更换模板"><i class="icon"></i><span>更换模板</span></a></li> -->
					<li class="fgsz"><a href="javascript:;" data-value="文档编辑页"><i
							class="icon"></i><span>风格设置</span></a></li>
				</ul>
			</div>
			<!-- 简历操作 -->
			<div class="resume_operation">
				<ul>
					<li class="jltd"><a href="javascript:;"
						class="500dtongji open_send_resume_modal"
						data_track="PC-CV6.6.1-在线制作-文档编辑页-左侧设置-左侧设置-简历投递" target="_blank"><i
							class="icon"></i><span>简历投递</span></a></li>
					<!-- 					<li class="drjl"><a href="javascript:;" id="importResumeBtn" -->
					<!-- 						data_auth='import_resume' class="500dtongji" -->
					<!-- 						data-show-vip-type="resume" -->
					<!-- 						data_track="PC-在线制作-文档编辑页-左侧设置-左侧设置-导入简历"><i class="icon"></i><span>导入简历</span></a></li> -->
					<!-- 					<li class="drjl"><a href="javascript:;" id="importResumeBtn" -->
					<!-- 						data_auth='import_resume' class="500dtongji wbd-vip-lock" -->
					<!-- 						data-show-vip-type="resume" -->
					<!-- 						data_track="PC-在线制作-文档编辑页-左侧设置-左侧设置-导入简历"><i class="icon"></i><span>导入简历</span></a></li> -->
				</ul>
			</div>
			<!-- 其他操作 -->
			<div class="other_operation">
				<ul>
					<li class="l-cvbar"><a href="javascript:;" data-value="文档编辑页"><i
							class="icon"></i><span>我的简历</span></a></li>

					<li class="logout"><a href="logout" data-value="注销退出"><i
							class="icon"></i><span>注销退出</span></a></li>

					<!-- 					<li class="czls"><a href="javascript:;" data-value="文档编辑页"><i -->
					<!-- 							class="icon"></i><span>操作历史</span></a></li> -->
					<!-- 					新做 简历权限设置 唤起按钮 -->
					<!-- 					<li class="resume_access_authority"><a href="javascript:;" -->
					<!-- 						class="500dtongji" data_track="PC-在线制作-文档编辑页-左侧设置-左侧设置-访问权限"><i -->
					<!-- 							class="icon"></i><span>访问权限</span></a> <span class="authority_tips"> -->
					<!-- 							"公开" </span></li> -->
					<!-- 					新做 切换手机简历 功能按钮 -->
					<!-- 					<li class="resume_switch_style  500dtongji" -->
					<!-- 						data_track="PC-在线制作-文档编辑页-左侧设置-左侧设置-切换手机简历"><a -->
					<!-- 						href="javascript:;" data_href="/cvresume/edit/?itemid=513"><span>切换手机简历</span><i -->
					<!-- 							class="switch_button"></i></a></li>  -->

				</ul>
			</div>
			<!-- 简历竞争力 -->
			<div class="resume_power">
				<div class="resume_power_text">
					<p class="r-viewbar">
						简历评分：<span class="power_level_name number">0分</span>
					</p>
					<div class="resume_power_explain hidden"></div>
				</div>
				<div class="resume_power_progress">
					<i></i>
				</div>
				<p class="resume_power_p">
					想找份好工作？那得好好<br />完善您的简历档案哦~
				</p>
			</div>
			<!--简历模板-->
			<div class="resume_template_number hidden">模板编号：JM0203</div>
			<!--新版编辑器左侧工具栏 end-->
		</div>
		<!--简历竞争力说明弹框-->
		<div class="explain_modal">
			<div class="modal_content">
				<h3 class="title">关于简历评分</h3>
				<div class="explain_list">
					<span class="list_title">什么是简历评分？</span>
					<div class="list_content">
						<p>简历评分是根据简历的完整度、丰富度、内容质量等多个角度，结合行业标
							准，综合衡量出的一项代表简历竞争水平的分值。数据追踪表明：简历评分
							分值越高，在面试求职及后续的职业发展中通常更有优势，易获得更多面试 机会及人脉资源。</p>
					</div>
				</div>
				<div class="explain_list">
					<span class="list_title">什么是简历评分？</span>
					<div class="list_content">
						<span>留下好的<br>第一印象
						</span> <span>收到更多<br>面试邀约
						</span> <span>提高<br>求职通过率
						</span>
					</div>
				</div>
				<div class="explain_list">
					<span class="list_title">如何提高评分？</span>
					<div class="list_content">
						<p>一份拥有足够必要信息的简历就可以在投递中收获不错的效果了，但我们的
							非必选项及贴士都能在一定程度上帮您更好地展示自己的优点及特色，建议 您根据自身实际情况参考填写哦！</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--编辑区域模块工具条-->
	<div id="itemTool" style="display: none;">
		<div class="baseItem-toolbar">
			<span class="edit preItem500dtongji"
				data_track="PC-在线制作-文档编辑页-中间简历编辑-{0}-编辑"></span><span
				class="handle ui-sortable-handle preItem500dtongji"
				data_track="PC-在线制作-文档编辑页-中间简历编辑-{0}-拖动"></span><span
				class="add save_opt preItem500dtongji"
				data_track="PC-在线制作-文档编辑页-中间简历编辑-{0}-添加"></span> <span
				class="set preItem500dtongji"
				data_track="PC-在线制作-文档编辑页-中间简历编辑-{0}-设置"><div class="set-con">
					<div class="inner clearfix">
						<div class="set-list hiddenTitle save_opt">
							<i>隐藏栏目标题</i><s></s>
						</div>
						<div class="set-list hiddenTime save_opt">
							<i>隐藏时间模块</i><s></s>
						</div>
						<div class="set-list hiddenText save_opt">
							<i>隐藏描述模块</i><s></s>
						</div>
						<!--<div class="set-list changeTitle save_opt"><i>修改栏目标题</i><a class="change">修改</a></div>-->
						<div class="set-list recovery_style save_opt">
							<i>恢复初始样式</i><a class="recovery 500dtongji">恢复</a>
						</div>
						<div class="set-list">
							<i>删除当前模块</i><a class="delete preItem500dtongji"
								data_track="PC-在线制作-文档编辑页-中间简历编辑-{0}-删除">删除</a>
						</div>
					</div>
				</div> </span>
		</div>
	</div>
	<div id="dateTool" style="display: none;">
		<div class="dateBar">
			<div class="dateBar-title">
				<ul class="clearfix">
					<li class="current">开始</li>
					<li>结束</li>
				</ul>
			</div>
			<div class="dateBar-con">
				<ul>
					<li class="start_time_li"><div class="ld">
							<div class="year_select"></div>
						</div>
						<div class="rd">
							<div class="month_select"></div>
						</div></li>
					<li style="display: none;" class="end_time_li"><div class="ld">
							<div class="year_select"></div>
						</div>
						<div class="rd">
							<div class="month_select"></div>
						</div></li>
				</ul>
			</div>
		</div>
	</div>
	<div
		class="experItem baseItem timeItem moduleItem resume_sort template_css"
		id="add_resume_time" data-pates="template_css" style="display: none;">
		<dl>
			<dt class="clearfix">
				<a class="wbdfont divIconFont" for-key="resume_work">&#xe8f9;</a> <span><div
						class="resume_lang module_item_title" for-key="resume_work"
						contenteditable="false" data-placeholder="工作经历"
						data-textLang="exper">工作经历</div></span>
			</dt>
			<dd class="clearfix">
				<div class="dd-content moduleItemList">

					<div class="dd-title clearfix">
						<span class="time"><div contenteditable="false">
								<i class="time-start">2016.7</i>-<i class="time-end">2017.9</i>
							</div></span> <span class="company"><div contenteditable="true"
								data-placeholder="填写公司名称..." data-placeLang="organization"></div></span>
						<span class="post"><div contenteditable="true"
								data-placeholder="填写职位名称..." data-placeLang="JobTitle"></div></span>
					</div>
					<div class="dd-text clearfix hidden">
						<div class="resume_lang resume_content" contenteditable="true"
							for-key="exper_content" data-placeholder="在这里添加描述..."
							data-placeLang="description"></div>
					</div>
				</div>
			</dd>
		</dl>
	</div>
	<!--荣誉奖项模块-->
	<div
		class="honorItem baseItem moduleItem descItem resume_sort template_css"
		id="add_resume_desc" data-pates="template_css" style="display: none;"
		style="display: none;">
		<dl>
			<dt class="clearfix">
				<a class="wbdfont divIconFont" for-key="resume_honor">&#xe8f9;</a> <span><div
						class="resume_lang module_item_title" for-key="resume_honor"
						contenteditable="false" data-placeholder="荣誉奖项"
						data-textLang="honor">荣誉奖项</div></span>
			</dt>
			<dd class="clearfix">
				<div class="dd-content moduleItemList">
					<div class="dd-text clearfix">
						<div class="resume_lang resume_content" contenteditable="true"
							for-key="honor_content" data-placeholder="在这里详细描述你的奖项荣耀..."
							data-placeLang="description"></div>
					</div>
				</div>
			</dd>
		</dl>
	</div>
	<!--模态框都写这里，不要写在其他地方-->
	<div class="wbdCv-modals">
		<!--图标库-->
		<div class="modal fade defaultmodal" id="IconModal">
			<div class="modal-dialog">
				<div class="modal-content icon-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">图标更换</span>
					</div>
					<div class="modal-body">
						<div class="icon-search">
							<input type="text" id="icon_search_value"
								placeholder="搜索你想要的图标...">
						</div>
						<div class="icon-list">
							<ul id="resume_icon_list">
							</ul>

						</div>
					</div>
				</div>
			</div>
		</div>
		<!--模板更换-->
		<div class="litemodal left_editor_modal change_template"
			id="changeResumeModal">
			<div class="modal-dialog show-swal1">
				<div class="modal-content">
					<div class="title">
						<span class="close" data-dismiss="modal" aria-hidden="true">缩起</span>
					</div>
					<input type="hidden" name="resume_type" id="current_resume_type"
						value="common"> <input type="hidden"
						name="resume_bank_type" id="current_resume_bank_type" value="doc">
					<div class="resume_template"></div>
				</div>
			</div>
		</div>
		<!--风格设置-->
		<div class="litemodal left_editor_modal" id="setStyleModal">
			<div class="modal-dialog show-swal1">
				<div class="modal-content">
					<div class="title">
						<span class="close" data-dismiss="modal" aria-hidden="true">缩起</span>
					</div>
					<div class="fgsz-con">
						<div class="fgsz-color">
							<div class="hd">颜色</div>
							<div class="bd">
								<ul class="clearfix">
									<li data-style="j1" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色1"
										style="background-color: #0b70bd;"></li>
									<li data-style="j2" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色2"
										style="background-color: #254665;"></li>
									<li data-style="j3" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色3"
										style="background-color: #589bf7;"></li>
									<li data-style="j4" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色4"
										style="background-color: #ff7171;"></li>
									<li data-style="j5" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色5"
										style="background-color: #37b754;"></li>
									<li data-style="j6" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色6"
										style="background-color: #292929;"></li>
									<li data-style="j7" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色7"
										style="background-color: #ee7000;"></li>
									<li data-style="j8" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色8"
										style="background-color: #a29177;"></li>
									<li data-style="j9" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色9"
										style="background-color: #da180f;"></li>
									<li data-style="j10" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色10"
										style="background-color: #6b4b24;"></li>
									<li data-style="j11" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色11"
										style="background-color: #048BB3;"></li>
									<li data-style="j12" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色12"
										style="background-color: #5974D4;"></li>
									<li data-style="j13" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色13"
										style="background-color: #9D57CA;"></li>
									<li data-style="j14" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色14"
										style="background-color: #d4ba38;"></li>
									<li data-style="j15" class="save_opt 500dtongji"
										data_track="在线制作-风格设置内页-颜色15"
										style="background-color: #69cc41;"></li>
								</ul>
							</div>
						</div>
						<div class="fgsz-fontfamily">
							<div class="hd">
								字体：<i id="select-font">微软雅黑</i>
							</div>
							<div class="bd">
								<div class="select-box">
									<input id="myselect" type="text" value="微软雅黑"
										readonly="readonly">
									<ul class="select-ul 500dtongji"
										data_track="PC-在线制作-文档编辑页-左侧简历设置-简历设置-风格设置-字体选择"
										id="setFontfamily">
										<li class="save_opt 500dtongji"
											data_track="PC-在线制作-自由编辑页-左侧简历设置-简历设置-风格设置-字体选择-宋体"
											data-fontname="songti">宋体</li>
										<li class="save_opt 500dtongji"
											data_track="PC-在线制作-自由编辑页-左侧简历设置-简历设置-风格设置-字体选择-微软雅黑"
											data-fontname="yahei">微软雅黑</li>
										<li class="save_opt 500dtongji"
											data_track="PC-在线制作-自由编辑页-左侧简历设置-简历设置-风格设置-字体选择-黑体"
											data-fontname="heiti">黑体</li>
										<li class="save_opt 500dtongji"
											data_track="PC-在线制作-自由编辑页-左侧简历设置-简历设置-风格设置-字体选择-隶书"
											data-fontname="lishu">隶书</li>
										<li class="save_opt 500dtongji"
											data_track="PC-在线制作-自由编辑页-左侧简历设置-简历设置-风格设置-字体选择-楷体"
											data-fontname="kaiti">楷体</li>
										<li class="save_opt 500dtongji"
											data_track="PC-在线制作-自由编辑页-左侧简历设置-简历设置-风格设置-字体选择-Arial"
											data-fontname="arial">Arial</li>
										<li class="save_opt 500dtongji"
											data_track="PC-在线制作-自由编辑页-左侧简历设置-简历设置-风格设置-字体选择-Times"
											data-fontname="times">Times</li>
										<li class="save_opt 500dtongji"
											data_track="PC-在线制作-自由编辑页-左侧简历设置-简历设置-风格设置-字体选择-Tahoma"
											data-fontname="tahoma">Tahoma</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="fgsz-fontsize fgsz-slider">
							<div class="hd clearfix">
								<label for="fonts_amount">字体大小：</label> <input type="text"
									id="fonts_amount" disabled="true" value="12">
							</div>
							<div class="fonts-slider">
								<span class="small"></span>
								<div id="fonts_slider" class=" 500dtongji"
									data_track="在线制作-风格设置内页-字体大小"></div>
								<span class="big"></span>
							</div>
						</div>
						<div class="fgsz-lineheight fgsz-slider">
							<div class="hd clearfix">
								<label for="lineh_amount">段距：</label> <input type="text"
									id="lineh_amount" disabled="true" value="1.5">
							</div>
							<div class="lineh-slider">
								<span class="small"></span>
								<div id="lineh_slider" class=" 500dtongji"
									data_track="在线制作-风格设置内页-段距"></div>
								<span class="big"></span>
							</div>
						</div>
						<!--新增 快距-->
						<div class="fgsz-modalmargin fgsz-slider">
							<div class="hd clearfix">
								<label for="lineh_amount">模块距离：</label> <input type="text"
									id="margin_amount" disabled="true" value="1">
							</div>
							<div class="lineh-slider">
								<span class="small"></span>
								<div id="margin_slider" class=" 500dtongji"
									data_track="在线制作-风格设置内页-段距"></div>
								<span class="big"></span>
							</div>
						</div>
						<!--新增 快距 end-->
						<div class="fgsz-jft">
							<div class="hd">文字</div>
							<div class="bd">
								<button id="jian" class="save_opt 500dtongji"
									data_track="PC-在线制作-风格设置功能（文档编辑）-文字选择-文字选择-简体">简体</button>
								<button id="fan" class="save_opt 500dtongji"
									data_track="PC-在线制作-风格设置功能（文档编辑）-文字选择-文字选择-繁体">繁体</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="zx-loading" style="display: none"></div>
		<!--简历选择编辑提示框-->
		<div class="modal fade promptModal" id="choose_other_resume_tips">
			<div class="modal-dialog">
				<div class="modal-content clearfix" style="overflow: visible">
					<div class="left">
						<img src="resources/web/editresume/images/zxbj/error.png" />
					</div>
					<div class="right text">
						<p>
							主公，<br />编辑其它简历前，请记得保存当前简历哦！<br />
						</p>
						<div class="mbtn">
							<button type="submit" data-dismiss="modal" aria-hidden="true">取消</button>
							<button class="choose_other_resume_confr_btn reset" type="reset">切换简历</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--模块管理弹框-->
		<div class="litemodal left_editor_modal" id="resume_modal_manager">
			<div class="modal-dialog show-swal1">
				<div class="modal-content">
					<div class="r-itembar r-basebar">
						<div class="title">
							<span class="close">缩起</span>
						</div>
						<div class="showcon itemcon">
							<ul id="showul">
								<li class="jbxx"><i class="icon"></i><span
									class="name 500dtongji"
									data_track="PC-在线制作-模块管理功能（文档编辑）-已有模块管理-已有模块管理-点击基本信息"
									data-placeholder="基本信息">基本信息</span><a style="display: none;"
									title="隐藏此模块" for-id="base_info"></a><s>必填</s></li>
								<li class="grzp"><i class="icon"></i><span class="name"
									data-placeholder="个人照片">个人照片</span><a class="save_opt"
									data_track="个人照片" title="隐藏此模块" for-id="resume_head"></a></li>
								<li class="qzyx"><i class="icon"></i><span class="name"
									data-placeholder="求职意向">求职意向</span><a class="save_opt"
									data_track="求职意向" title="隐藏此模块" for-id="resume_job_preference"></a></li>
								<li class="jybj"><i class="icon"></i><span class="name"
									data-placeholder="教育背景">教育背景</span><a class="save_opt"
									data_track="教育背景" title="隐藏此模块" for-id="resume_edu"></a></li>
								<li class="gzjy"><i class="icon"></i><span class="name"
									data-placeholder="工作经验">工作经验</span><a class="save_opt"
									data_track="工作经验" title="隐藏此模块" for-id="resume_work"></a></li>
								<li class="sxjy"><i class="icon"></i><span class="name"
									data-placeholder="实习经验">实习经验</span><a class="save_opt"
									data_track="实习经验" title="隐藏此模块" for-id="resume_internship"></a></li>
								<li class="zyjy"><i class="icon"></i><span class="name"
									data-placeholder="志愿者经验">志愿者经验</span><a class="save_opt"
									data_track="志愿者经验" title="隐藏此模块" for-id="resume_volunteer"></a></li>
								<li class="xmjy"><i class="icon"></i><span class="name"
									data-placeholder="项目经历">项目经历</span><a class="save_opt"
									data_track="项目经历" title="隐藏此模块" for-id="resume_project"></a></li>
								<li class="zwpj"><i class="icon"></i><span class="name"
									data-placeholder="自我评价">自我评价</span><a class="save_opt"
									data_track="自我评价" title="隐藏此模块" for-id="resume_summary"></a></li>
								<li class="jxry"><i class="icon"></i><span class="name"
									data-placeholder="奖项荣誉">奖项荣誉</span><a class="save_opt"
									data_track="奖项荣誉" title="隐藏此模块" for-id="resume_honor"></a></li>
								<li class="xqah"><i class="icon"></i><span class="name"
									data-placeholder="兴趣爱好">兴趣爱好</span><a class="save_opt"
									data_track="兴趣爱好" title="隐藏此模块" for-id="resume_hobby"></a></li>
								<li class="zyjn"><i class="icon"></i><span class="name"
									data-placeholder="技能特长">技能特长</span><a class="save_opt"
									data_track="技能特长" title="隐藏此模块" for-id="resume_skill"></a></li>
								<li class="zpzs"><i class="icon"></i><span class="name"
									data-placeholder="作品展示">作品展示</span><a class="save_opt"
									data_track="作品展示" title="隐藏此模块" for-id="resume_portfolio"></a></li>
								<li class="ewm"><i class="icon"></i><span class="name"
									data-placeholder="二维码">二维码</span><a class="save_opt"
									data_track="二维码" title="隐藏此模块" for-id="resume_qrcode"></a></li>
								<li class="fm"><i class="icon"></i><span class="name"
									data-placeholder="封面">封面</span><a class="save_opt"
									data-show-vip-type="resume" data_auth='cover' data_track="封面"
									title="隐藏此模块" for-id="resume_cover"></a></li>
								<li class="zjx"><i class="icon"></i><span class="name"
									data-placeholder="自荐信">自荐信</span><a class="save_opt"
									data-show-vip-type="resume" data_auth='letter' data_track="自荐信"
									title="隐藏此模块" for-id="resume_letter"></a></li>
							</ul>
						</div>
						<div class="hidecon itemcon">
							<div class="addother-btn">
								<span class="name">添加其它模块</span>
							</div>
							<ul id="hideul">
								<li style="height: 2px; margin: 0px;"></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--简历权限弹框-->
		<div class="modal fade smallmodal" id="resume_authority_modal"
			aria-hidden="false">
			<div class="modal-dialog">
				<div class="modal-content resume_authority_modal show-swal2">
					<div class="modal-header">
						<button type="button" class="close 500dtongji"
							data_track="PC-在线制作-访问权限功能（文档编辑）-访问权限弹框-访问权限弹框-关闭"
							data-dismiss="modal" aria-hidden="true"></button>
						<span class="modal-title">简历访问权限</span>
					</div>
					<div class="modal-body">
						<ul class="resume_authority">
							<li class="authority_list 500dtongji checked "
								data_track="PC-在线制作-访问权限功能（文档编辑）-访问权限弹框-访问权限弹框-所有人"
								data-type="open"><div>
									<span class="authority_title"><i></i>所有人</span><span
										class="authority_text">通过链接地址即可访问</span>
								</div></li>
							<li class="authority_list" data-type="mmfw">
								<div class="500dtongji"
									data_track="PC-在线制作-访问权限功能（文档编辑）-访问权限弹框-访问权限弹框-密码访问">
									<span class="authority_title"><i></i>密码访问</span><span
										class="authority_text">仅能通过密码访问</span>
								</div>
								<div class="visit_password">
									<input type="text" placeholder="密码格式仅限6位纯数字" id="visitPassword"
										maxlength="6" class="panelInput" value="">
									<button type="button" class="button submit 500dtongji"
										data_track="PC-在线制作-访问权限功能（文档编辑）-访问权限弹框-访问权限弹框-密码访问-确定"
										id="visitPasswordSubBtn">确定</button>
								</div>
							</li>
							<li class="authority_list 500dtongji"
								data_track="PC-在线制作-访问权限功能（文档编辑）-访问权限弹框-访问权限弹框-仅自己"
								data-type="privary"><div>
									<span class="authority_title"><i></i>仅自己</span><span
										class="authority_text">仅自己可以打开简历</span>
								</div></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
		<!--我的简历-->
		<div class="litemodal left_editor_modal" id="cvListModal">
			<div class="modal-dialog show-swal1">
				<div class="modal-content">
					<ul class="resume_list">
						<div class="title">
							<span class="close" data-dismiss="modal" aria-hidden="true">缩起</span>
						</div>
						<div class="wdjl-con">
							<ul id="my_resume_list">
							</ul>
							<div class="wdjl-null" style="display: none">
								<p>你还没有保存任何简历哦</p>
								<!--<a href="/editresume/">创建</a>-->
							</div>
						</div>
					</ul>
				</div>
			</div>
		</div>
		<!--操作历史-->
		<div class="litemodal left_editor_modal" id="historyModal">
			<div class="modal-dialog show-swal1">
				<div class="modal-content">
					<div class="title">
						<span class="close" data-dismiss="modal" aria-hidden="true">缩起</span>
					</div>
					<div class="czls-con">
						<div class="czls-null">
							<p>你还没有保存任何简历哦</p>
						</div>
						<ul></ul>
					</div>
				</div>
			</div>
		</div>
		<!--内容建议-->
		<div class="litemodal" id="suggestModal">
			<div class="modal-dialog show-swal1">
				<div class="modal-content">
					<div class="title">
						<h2>内容建议</h2>
						<span class="close" data-dismiss="modal" aria-hidden="true"></span>
					</div>
					<div class="nrjy-con">
						<div class="list">
							<div class="hd">
								<i class="icon"></i><a class="a-button submit"
									href="javascript:;">查看实例</a>
							</div>
							<div class="bd">教育背景主要包含最基本的在校时间、学校名称、专业、学历，如有社团、班级、学生会等职位也可在简历上呈现，但一定要从具体工作的角度去展开描述，不要在无事实依据的情况下空谈能力，特别是领导力、战略能力，以免贻笑大方。</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--编辑自定义模块-->
		<div class="modal fade defaultmodal" id="custom-modal">
			<div class="modal-dialog">
				<div class="modal-content custom-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">添加自定义模块</span>
					</div>
					<div class="modal-body">
						<input type="text" placeholder="模块标题"
							class="custom-title resume_title">
						<div class="custom-time-input">
							<span class="time"><b>时间</b>
								<div class="hidden" contenteditable="false">
									<i class="time-start">2016.7</i>-<i class="time-end">2017.9</i>
								</div></span>
							<!--<input type="text" placeholder="填写时间" class="custom-sSupply resume_time">-->
							<input type="text" placeholder="补充描述"
								class="custom-sSupply resume_unit"> <input type="text"
								placeholder="补充描述" class="custom-sSupply resume_job">
						</div>
						<div class="custom-bSupply">
							<textarea class="resume_content" name="" id="" placeholder="补充描述"></textarea>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="button submit resume_add save_opt">保存</button>
						<button data-dismiss="modal" aria-hidden="true" type="button"
							class="button cancel">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--编辑基本信息-->
		<div class="modal fade defaultmodal base_info_modal"
			id="baseMsg-modal">
			<div class="modal-dialog">
				<div class="modal-content msg-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close 500dtongji"
							data_track="PC-在线制作-基本信息弹框（文档）-外部框-外部框-关闭" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">编辑基本信息</span>
					</div>
					<div class="modal-body">
						<div class="default-msg clearfix">
							<div class="modal-item nameItem">
								<span class="item-title">你的姓名</span>
								<div class="item-content">
									<input type="text" maxlength="200" name="name" value=""
										data-panel="name">
								</div>
							</div>
							<div class="modal-item brithItem">
								<span class="item-title">出生日期</span>
								<div class="item-content">
									<div id="yearSelect" class="sSelect" data-selected="false">
										<span>年份</span> <input type="hidden" name="birthYear" value=""
											data-panel="years">
										<ul class="select">
											<li data-value="1950">1950</li>
											<li data-value="1951">1951</li>
											<li data-value="1952">1952</li>
											<li data-value="1953">1953</li>
											<li data-value="1954">1954</li>
											<li data-value="1955">1955</li>
											<li data-value="1956">1956</li>
											<li data-value="1957">1957</li>
											<li data-value="1958">1958</li>
											<li data-value="1959">1959</li>
											<li data-value="1960">1960</li>
											<li data-value="1961">1961</li>
											<li data-value="1962">1962</li>
											<li data-value="1963">1963</li>
											<li data-value="1964">1964</li>
											<li data-value="1965">1965</li>
											<li data-value="1966">1966</li>
											<li data-value="1967">1967</li>
											<li data-value="1968">1968</li>
											<li data-value="1969">1969</li>
											<li data-value="1970">1970</li>
											<li data-value="1971">1971</li>
											<li data-value="1972">1972</li>
											<li data-value="1973">1973</li>
											<li data-value="1974">1974</li>
											<li data-value="1975">1975</li>
											<li data-value="1976">1976</li>
											<li data-value="1977">1977</li>
											<li data-value="1978">1978</li>
											<li data-value="1979">1979</li>
											<li data-value="1980">1980</li>
											<li data-value="1981">1981</li>
											<li data-value="1982">1982</li>
											<li data-value="1983">1983</li>
											<li data-value="1984">1984</li>
											<li data-value="1985">1985</li>
											<li data-value="1986">1986</li>
											<li data-value="1987">1987</li>
											<li data-value="1988">1988</li>
											<li data-value="1989">1989</li>
											<li data-value="1990">1990</li>
											<li data-value="1991">1991</li>
											<li data-value="1992">1992</li>
											<li data-value="1993">1993</li>
											<li data-value="1994">1994</li>
											<li data-value="1995">1995</li>
											<li data-value="1996">1996</li>
											<li data-value="1997">1997</li>
											<li data-value="1998">1998</li>
											<li data-value="1999">1999</li>
											<li data-value="2000">2000</li>
											<li data-value="2001">2001</li>
											<li data-value="2002">2002</li>
											<li data-value="2003">2003</li>
											<li data-value="2004">2004</li>
											<li data-value="2005">2005</li>
											<li data-value="2006">2006</li>
											<li data-value="2007">2007</li>
											<li data-value="2009">2009</li>
											<li data-value="2010">2010</li>
											<li data-value="2011">2011</li>
											<li data-value="2012">2012</li>
											<li data-value="2013">2013</li>
											<li data-value="2014">2014</li>
											<li data-value="2015">2015</li>
											<li data-value="2016">2016</li>
											<li data-value="2017">2017</li>
											<li data-value="2018">2018</li>
										</ul>
									</div>
									<div id="monthSelect" class="sSelect" data-selected="false">
										<span>月份</span> <input type="hidden" name="birthMonth"
											value="" data-panel="months">
										<ul class="select">
											<li data-value="1">1</li>
											<li data-value="2">2</li>
											<li data-value="3">3</li>
											<li data-value="4">4</li>
											<li data-value="5">5</li>
											<li data-value="6">6</li>
											<li data-value="7">7</li>
											<li data-value="8">8</li>
											<li data-value="9">9</li>
											<li data-value="10">10</li>
											<li data-value="11">11</li>
											<li data-value="12">12</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="modal-item cityItem">
								<span class="item-title">所在城市</span>
								<div class="item-content citySelect">
									<span>选择城市</span> <input type="text" maxlength="20"
										class="inputcity" autofocus placeholder="输入城市名称，按回车键确认">
									<input type="hidden" name="city" value="" data-name=""
										data-panel="city">
								</div>
								<div class="doubleSelect">
									<ul class="leftSelect" data_value="">
										<li class="leftclick">热门城市</li>
										<li>安徽</li>
										<li>湖南</li>
										<li>云南</li>
										<li>河北</li>
										<li>江苏</li>
										<li>吉林</li>
										<li>山东</li>
										<li>甘肃</li>
										<li>福建</li>
										<li>广东</li>
										<li>湖北</li>
										<li>浙江</li>
										<li>海南</li>
										<li>贵州</li>
										<li>辽宁</li>
										<li>青海</li>
										<li>山西</li>
										<li>江西</li>
										<li>四川</li>
										<li>河南</li>
										<li>陕西</li>
										<li>广西</li>
										<li>宁夏</li>
										<li>新疆</li>
										<li>西藏</li>
										<li>黑龙江</li>
										<li>内蒙古</li>
									</ul>
									<ul class="rightSelect">
										<li><a href="javascript:;" data-value="1947">广州</a> <a
											href="javascript:;" data-value="1971">深圳</a> <a
											href="javascript:;" data-value="1">北京</a> <a
											href="javascript:;" data-value="7">上海</a> <a
											href="javascript:;" data-value="927">杭州</a> <a
											href="javascript:;" data-value="2280">成都</a> <a
											href="javascript:;" data-value="2808">西安</a> <a
											href="javascript:;" data-value="811">南京</a> <a
											href="javascript:;" data-value="1165">厦门</a> <a
											href="javascript:;" data-value="18">天津</a> <a
											href="javascript:;" data-value="2240">重庆</a> <a
											href="javascript:;" data-value="1693">武汉</a> <a
											href="javascript:;" data-value="3292">香港</a> <a
											href="javascript:;" data-value="3314">澳门</a> <a
											href="javascript:;" data-value="3219">台湾</a> <a
											id="defindCity">自定义</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="1029">合肥</a> <a href="javascript:;"
											data-value="1039">芜湖</a> <a href="javascript:;"
											data-value="1048">蚌埠</a> <a href="javascript:;"
											data-value="1056">淮南</a> <a href="javascript:;"
											data-value="1063">马鞍山</a> <a href="javascript:;"
											data-value="1070">淮北</a> <a href="javascript:;"
											data-value="1075">铜陵</a> <a href="javascript:;"
											data-value="1080">安庆</a> <a href="javascript:;"
											data-value="1092">黄山</a> <a href="javascript:;"
											data-value="1100">滁州</a> <a href="javascript:;"
											data-value="1109">阜阳</a> <a href="javascript:;"
											data-value="1118">宿州</a> <a href="javascript:;"
											data-value="1124">六安</a> <a href="javascript:;"
											data-value="1132">亳州</a> <a href="javascript:;"
											data-value="1137">池州</a> <a href="javascript:;"
											data-value="1142">宣城</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="1810">长沙</a> <a href="javascript:;"
											data-value="1820">株洲</a> <a href="javascript:;"
											data-value="1830">湘潭</a> <a href="javascript:;"
											data-value="1836">衡阳</a> <a href="javascript:;"
											data-value="1849">邵阳</a> <a href="javascript:;"
											data-value="1862">岳阳</a> <a href="javascript:;"
											data-value="1872">常德</a> <a href="javascript:;"
											data-value="1882">张家界</a> <a href="javascript:;"
											data-value="1887">益阳</a> <a href="javascript:;"
											data-value="1894">郴州</a> <a href="javascript:;"
											data-value="1906">永州</a> <a href="javascript:;"
											data-value="1918">怀化</a> <a href="javascript:;"
											data-value="1931">娄底</a> <a href="javascript:;"
											data-value="1937">湘西土家族苗族自治州</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="2581">昆明</a> <a href="javascript:;"
											data-value="2596">曲靖</a> <a href="javascript:;"
											data-value="2606">玉溪</a> <a href="javascript:;"
											data-value="2616">保山</a> <a href="javascript:;"
											data-value="2622">昭通</a> <a href="javascript:;"
											data-value="2634">丽江</a> <a href="javascript:;"
											data-value="2640">普洱</a> <a href="javascript:;"
											data-value="2651">临沧</a> <a href="javascript:;"
											data-value="2660">楚雄彝族自治州</a> <a href="javascript:;"
											data-value="2671">红河哈尼族彝族自治州</a> <a href="javascript:;"
											data-value="2685">文山壮族苗族自治州</a> <a href="javascript:;"
											data-value="2694">西双版纳傣族自治州</a> <a href="javascript:;"
											data-value="2698">大理白族自治州</a> <a href="javascript:;"
											data-value="2711">德宏傣族景颇族自治州</a> <a href="javascript:;"
											data-value="2717">怒江傈僳族自治州</a> <a href="javascript:;"
											data-value="2722">迪庆藏族自治州</a></li>
										<li data-parent=""><a href="javascript:;" data-value="36">石家庄</a>
											<a href="javascript:;" data-value="60">唐山</a> <a
											href="javascript:;" data-value="75">秦皇岛</a> <a
											href="javascript:;" data-value="83">邯郸</a> <a
											href="javascript:;" data-value="103">邢台</a> <a
											href="javascript:;" data-value="123">保定</a> <a
											href="javascript:;" data-value="149">张家口</a> <a
											href="javascript:;" data-value="167">承德</a> <a
											href="javascript:;" data-value="179">沧州</a> <a
											href="javascript:;" data-value="196">廊坊</a> <a
											href="javascript:;" data-value="207">衡水</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="811">南京</a> <a href="javascript:;"
											data-value="825">无锡</a> <a href="javascript:;"
											data-value="834">徐州</a> <a href="javascript:;"
											data-value="845">常州</a> <a href="javascript:;"
											data-value="853">苏州</a> <a href="javascript:;"
											data-value="863">南通</a> <a href="javascript:;"
											data-value="872">连云港</a> <a href="javascript:;"
											data-value="880">淮安</a> <a href="javascript:;"
											data-value="889">盐城</a> <a href="javascript:;"
											data-value="899">扬州</a> <a href="javascript:;"
											data-value="906">镇江</a> <a href="javascript:;"
											data-value="913">泰州</a> <a href="javascript:;"
											data-value="920">宿迁</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="581">长春</a> <a href="javascript:;"
											data-value="592">吉林</a> <a href="javascript:;"
											data-value="602">四平</a> <a href="javascript:;"
											data-value="609">辽源</a> <a href="javascript:;"
											data-value="614">通化</a> <a href="javascript:;"
											data-value="622">白山</a> <a href="javascript:;"
											data-value="629">松原</a> <a href="javascript:;"
											data-value="635">白城</a> <a href="javascript:;"
											data-value="641">延边朝鲜族自治州</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="1358">济南</a> <a href="javascript:;"
											data-value="1369">青岛</a> <a href="javascript:;"
											data-value="1382">淄博</a> <a href="javascript:;"
											data-value="1391">枣庄</a> <a href="javascript:;"
											data-value="1398">东营</a> <a href="javascript:;"
											data-value="1404">烟台</a> <a href="javascript:;"
											data-value="1417">潍坊</a> <a href="javascript:;"
											data-value="1430">济宁</a> <a href="javascript:;"
											data-value="1443">泰安</a> <a href="javascript:;"
											data-value="1450">威海</a> <a href="javascript:;"
											data-value="1455">日照</a> <a href="javascript:;"
											data-value="1460">莱芜</a> <a href="javascript:;"
											data-value="1463">临沂</a> <a href="javascript:;"
											data-value="1476">德州</a> <a href="javascript:;"
											data-value="1488">聊城</a> <a href="javascript:;"
											data-value="1497">滨州</a> <a href="javascript:;"
											data-value="1505">菏泽</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="2926">兰州</a> <a href="javascript:;"
											data-value="2935">嘉峪关</a> <a href="javascript:;"
											data-value="2936">金昌</a> <a href="javascript:;"
											data-value="2939">白银</a> <a href="javascript:;"
											data-value="2945">天水</a> <a href="javascript:;"
											data-value="2953">武威</a> <a href="javascript:;"
											data-value="2958">张掖</a> <a href="javascript:;"
											data-value="2965">平凉</a> <a href="javascript:;"
											data-value="2973">酒泉</a> <a href="javascript:;"
											data-value="2981">庆阳</a> <a href="javascript:;"
											data-value="2990">定西</a> <a href="javascript:;"
											data-value="2998">陇南</a> <a href="javascript:;"
											data-value="3008">临夏回族自治州</a> <a href="javascript:;"
											data-value="3017">甘南藏族自治州</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="1151">福州</a> <a href="javascript:;"
											data-value="1165">厦门</a> <a href="javascript:;"
											data-value="1172">莆田</a> <a href="javascript:;"
											data-value="1178">三明</a> <a href="javascript:;"
											data-value="1191">泉州</a> <a href="javascript:;"
											data-value="1204">漳州</a> <a href="javascript:;"
											data-value="1216">南平</a> <a href="javascript:;"
											data-value="1227">龙岩</a> <a href="javascript:;"
											data-value="1235">宁德</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="1947">广州</a> <a href="javascript:;"
											data-value="1960">韶关</a> <a href="javascript:;"
											data-value="1971">深圳</a> <a href="javascript:;"
											data-value="1978">珠海</a> <a href="javascript:;"
											data-value="1982">汕头</a> <a href="javascript:;"
											data-value="1990">佛山</a> <a href="javascript:;"
											data-value="1996">江门</a> <a href="javascript:;"
											data-value="2004">湛江</a> <a href="javascript:;"
											data-value="2014">茂名</a> <a href="javascript:;"
											data-value="2021">肇庆</a> <a href="javascript:;"
											data-value="2030">惠州</a> <a href="javascript:;"
											data-value="2036">梅州</a> <a href="javascript:;"
											data-value="2045">汕尾</a> <a href="javascript:;"
											data-value="2050">河源</a> <a href="javascript:;"
											data-value="2057">阳江</a> <a href="javascript:;"
											data-value="2062">清远</a> <a href="javascript:;"
											data-value="2071">东莞</a> <a href="javascript:;"
											data-value="2072">中山</a> <a href="javascript:;"
											data-value="2073">潮州</a> <a href="javascript:;"
											data-value="2077">揭阳</a> <a href="javascript:;"
											data-value="2083">云浮</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="1693">武汉</a> <a href="javascript:;"
											data-value="1707">黄石</a> <a href="javascript:;"
											data-value="1714">十堰</a> <a href="javascript:;"
											data-value="1723">宜昌</a> <a href="javascript:;"
											data-value="1737">襄阳</a> <a href="javascript:;"
											data-value="1747">鄂州</a> <a href="javascript:;"
											data-value="1751">荆门</a> <a href="javascript:;"
											data-value="1757">孝感</a> <a href="javascript:;"
											data-value="1765">荆州</a> <a href="javascript:;"
											data-value="1774">黄冈</a> <a href="javascript:;"
											data-value="1785">咸宁</a> <a href="javascript:;"
											data-value="1792">随州</a> <a href="javascript:;"
											data-value="1796">恩施土家族苗族自治州</a> <a href="javascript:;"
											data-value="1805">仙桃</a> <a href="javascript:;"
											data-value="1806">潜江</a> <a href="javascript:;"
											data-value="1807">天门</a> <!--<a href="javascript:;" data-value="1808">神农架林区</a>-->
										</li>
										<li data-parent=""><a href="javascript:;"
											data-value="927">杭州</a> <a href="javascript:;"
											data-value="941">宁波</a> <a href="javascript:;"
											data-value="953">温州</a> <a href="javascript:;"
											data-value="965">嘉兴</a> <a href="javascript:;"
											data-value="973">湖州</a> <a href="javascript:;"
											data-value="979">绍兴</a> <a href="javascript:;"
											data-value="986">金华</a> <a href="javascript:;"
											data-value="996">衢州</a> <a href="javascript:;"
											data-value="1003">舟山</a> <a href="javascript:;"
											data-value="1008">台州</a> <a href="javascript:;"
											data-value="1018">丽水</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="2214">海口</a> <a href="javascript:;"
											data-value="2219">三亚</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="2483">贵阳</a> <a href="javascript:;"
											data-value="2494">六盘水</a> <a href="javascript:;"
											data-value="2499">遵义</a> <a href="javascript:;"
											data-value="2514">安顺</a> <a href="javascript:;"
											data-value="2521">毕节地区</a> <a href="javascript:;"
											data-value="2530">铜仁地区</a> <a href="javascript:;"
											data-value="2541">黔西南布依族苗族自治州</a> <a href="javascript:;"
											data-value="2550">黔东南苗族侗族自治州</a> <a href="javascript:;"
											data-value="2567">黔南布依族苗族自治州</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="466">沈阳</a> <a href="javascript:;"
											data-value="480">大连</a> <a href="javascript:;"
											data-value="491">鞍山</a> <a href="javascript:;"
											data-value="499">抚顺</a> <a href="javascript:;"
											data-value="507">本溪</a> <a href="javascript:;"
											data-value="514">丹东</a> <a href="javascript:;"
											data-value="521">锦州</a> <a href="javascript:;"
											data-value="529">营口</a> <a href="javascript:;"
											data-value="536">阜新</a> <a href="javascript:;"
											data-value="544">辽阳</a> <a href="javascript:;"
											data-value="552">盘锦</a> <a href="javascript:;"
											data-value="557">铁岭</a> <a href="javascript:;"
											data-value="565">朝阳</a> <a href="javascript:;"
											data-value="573">葫芦岛</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="3027">西宁</a> <a href="javascript:;"
											data-value="3035">海东</a> <a href="javascript:;"
											data-value="3042">海北</a> <a href="javascript:;"
											data-value="3047">黄南</a> <a href="javascript:;"
											data-value="3052">海南</a> <a href="javascript:;"
											data-value="3058">果洛</a> <a href="javascript:;"
											data-value="3065">玉树</a> <a href="javascript:;"
											data-value="3072">海西</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="220">太原</a> <a href="javascript:;"
											data-value="231">大同</a> <a href="javascript:;"
											data-value="243">阳泉</a> <a href="javascript:;"
											data-value="249">长治</a> <a href="javascript:;"
											data-value="263">晋城</a> <a href="javascript:;"
											data-value="271">朔州</a> <a href="javascript:;"
											data-value="278">晋中</a> <a href="javascript:;"
											data-value="290">运城</a> <a href="javascript:;"
											data-value="304">忻州</a> <a href="javascript:;"
											data-value="319">临汾</a> <a href="javascript:;"
											data-value="337">吕梁</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="1246">南昌</a> <a href="javascript:;"
											data-value="1256">景德镇</a> <a href="javascript:;"
											data-value="1261">萍乡</a> <a href="javascript:;"
											data-value="1267">九江</a> <a href="javascript:;"
											data-value="1281">新余</a> <a href="javascript:;"
											data-value="1284">鹰潭</a> <a href="javascript:;"
											data-value="1288">赣州</a> <a href="javascript:;"
											data-value="1307">吉安</a> <a href="javascript:;"
											data-value="1321">宜春</a> <a href="javascript:;"
											data-value="1332">抚州</a> <a href="javascript:;"
											data-value="1344">上饶</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="2280">成都</a> <a href="javascript:;"
											data-value="2300">自贡</a> <a href="javascript:;"
											data-value="2307">攀枝花</a> <a href="javascript:;"
											data-value="2313">泸州</a> <a href="javascript:;"
											data-value="2321">德阳</a> <a href="javascript:;"
											data-value="2328">绵阳</a> <a href="javascript:;"
											data-value="2338">广元</a> <a href="javascript:;"
											data-value="2346">遂宁</a> <a href="javascript:;"
											data-value="2352">内江</a> <a href="javascript:;"
											data-value="2358">乐山</a> <a href="javascript:;"
											data-value="2370">南充</a> <a href="javascript:;"
											data-value="2380">眉山</a> <a href="javascript:;"
											data-value="2387">宜宾</a> <a href="javascript:;"
											data-value="2398">广安</a> <a href="javascript:;"
											data-value="2404">达州</a> <a href="javascript:;"
											data-value="2412">雅安</a> <a href="javascript:;"
											data-value="2421">巴中</a> <a href="javascript:;"
											data-value="2426">资阳</a> <a href="javascript:;"
											data-value="2431">阿坝藏族羌族自治州</a> <a href="javascript:;"
											data-value="2445">甘孜藏族自治州</a> <a href="javascript:;"
											data-value="2464">凉山彝族自治州</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="1516">郑州</a> <a href="javascript:;"
											data-value="1529">开封</a> <a href="javascript:;"
											data-value="1540">洛阳</a> <a href="javascript:;"
											data-value="1556">平顶山</a> <a href="javascript:;"
											data-value="1567">安阳</a> <a href="javascript:;"
											data-value="1577">鹤壁</a> <a href="javascript:;"
											data-value="1583">新乡</a> <a href="javascript:;"
											data-value="1596">焦作</a> <a href="javascript:;"
											data-value="1607">濮阳</a> <a href="javascript:;"
											data-value="1614">许昌</a> <a href="javascript:;"
											data-value="1621">漯河</a> <a href="javascript:;"
											data-value="1627">三门峡</a> <a href="javascript:;"
											data-value="1634">南阳</a> <a href="javascript:;"
											data-value="1648">商丘</a> <a href="javascript:;"
											data-value="1658">信阳</a> <a href="javascript:;"
											data-value="1669">周口</a> <a href="javascript:;"
											data-value="1680">驻马店</a> <a href="javascript:;"
											data-value="1691">济源</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="2808">西安</a> <a href="javascript:;"
											data-value="2822">铜川</a> <a href="javascript:;"
											data-value="2827">宝鸡</a> <a href="javascript:;"
											data-value="2840">咸阳</a> <a href="javascript:;"
											data-value="2855">渭南</a> <a href="javascript:;"
											data-value="2867">延安</a> <a href="javascript:;"
											data-value="2881">汉中</a> <a href="javascript:;"
											data-value="2893">榆林</a> <a href="javascript:;"
											data-value="2906">安康</a> <a href="javascript:;"
											data-value="2917">商洛</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="2090">南宁</a> <a href="javascript:;"
											data-value="2103">柳州</a> <a href="javascript:;"
											data-value="2114">桂林</a> <a href="javascript:;"
											data-value="2132">梧州</a> <a href="javascript:;"
											data-value="2140">北海</a> <a href="javascript:;"
											data-value="2145">防城港</a> <a href="javascript:;"
											data-value="2150">钦州</a> <a href="javascript:;"
											data-value="2155">贵港</a> <a href="javascript:;"
											data-value="2161">玉林</a> <a href="javascript:;"
											data-value="2168">百色</a> <a href="javascript:;"
											data-value="2181">贺州</a> <a href="javascript:;"
											data-value="2186">河池</a> <a href="javascript:;"
											data-value="2198">来宾</a> <a href="javascript:;"
											data-value="2205">崇左</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="3079">银川</a> <a href="javascript:;"
											data-value="3086">石嘴山</a> <a href="javascript:;"
											data-value="3090">吴忠</a> <a href="javascript:;"
											data-value="3096">固原</a> <a href="javascript:;"
											data-value="3102">中卫</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="3107">乌鲁木齐</a> <a href="javascript:;"
											data-value="3116">克拉玛依</a> <a href="javascript:;"
											data-value="3121">吐鲁番</a> <a href="javascript:;"
											data-value="3125">哈密</a> <a href="javascript:;"
											data-value="3129">昌吉</a> <a href="javascript:;"
											data-value="3151">阿克苏</a> <a href="javascript:;"
											data-value="3166">喀什</a> <a href="javascript:;"
											data-value="3179">和田</a> <a href="javascript:;"
											data-value="3188">伊犁</a> <a href="javascript:;"
											data-value="3199">塔城</a> <a href="javascript:;"
											data-value="3207">阿勒泰</a> <a href="javascript:;"
											data-value="3215">石河子</a> <a href="javascript:;"
											data-value="3317">库尔勒</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="2727">拉萨</a> <a href="javascript:;"
											data-value="2736">昌都</a> <a href="javascript:;"
											data-value="2748">山南</a> <a href="javascript:;"
											data-value="2761">日喀则</a> <a href="javascript:;"
											data-value="2780">那曲</a> <a href="javascript:;"
											data-value="2791">阿里</a> <a href="javascript:;"
											data-value="2799">林芝</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="651">哈尔滨</a> <a href="javascript:;"
											data-value="670">齐齐哈尔</a> <a href="javascript:;"
											data-value="687">鸡西</a> <a href="javascript:;"
											data-value="697">鹤岗</a> <a href="javascript:;"
											data-value="706">双鸭山</a> <a href="javascript:;"
											data-value="715">大庆</a> <a href="javascript:;"
											data-value="725">伊春</a> <a href="javascript:;"
											data-value="743">佳木斯</a> <a href="javascript:;"
											data-value="754">七台河</a> <a href="javascript:;"
											data-value="759">牡丹江</a> <a href="javascript:;"
											data-value="770">黑河</a> <a href="javascript:;"
											data-value="777">绥化</a> <a href="javascript:;"
											data-value="788">大兴安岭地区</a></li>
										<li data-parent=""><a href="javascript:;"
											data-value="352">呼和浩特</a> <a href="javascript:;"
											data-value="362">包头</a> <a href="javascript:;"
											data-value="372">乌海</a> <a href="javascript:;"
											data-value="376">赤峰</a> <a href="javascript:;"
											data-value="389">通辽</a> <a href="javascript:;"
											data-value="398">鄂尔多斯</a> <a href="javascript:;"
											data-value="407">呼伦贝尔</a> <a href="javascript:;"
											data-value="421">巴彦淖尔</a> <a href="javascript:;"
											data-value="429">乌兰察布</a> <a href="javascript:;"
											data-value="441">兴安盟</a> <a href="javascript:;"
											data-value="448">锡林郭勒盟</a> <a href="javascript:;"
											data-value="461">阿拉善盟</a></li>
									</ul>
								</div>
							</div>
							<div class="modal-item workItem">
								<span class="item-title">工作年限</span>
								<div class="item-content bSelect">
									<span>选择工作年限</span> <input type="hidden" name="jobYear"
										value="" data-panel="work">
									<ul class="select">
										<li data-value="no" data-textLang="noExp" class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限0年">无工作经验</li>
										<li data-value="one" data-textLang="one" class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限1年">1年</li>
										<li data-value="two" data-textLang="two" class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限2年">2年</li>
										<li data-value="three" data-textLang="three"
											class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限3年">3年</li>
										<li data-value="four" data-textLang="four" class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限4年">4年</li>
										<li data-value="five" data-textLang="five" class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限5年">5年</li>
										<li data-value="six" data-textLang="six" class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限6年">6年</li>
										<li data-value="steven" data-textLang="seven"
											class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限7年">7年</li>
										<li data-value="eight" data-textLang="eight"
											class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限8年">8年</li>
										<li data-value="nine" data-textLang="nine" class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限9年">9年</li>
										<li data-value="ten" data-textLang="ten" class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限10年">10年</li>
										<li data-value="more" data-textLang="moreTen"
											class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-工作年限10+年">10年以上</li>
									</ul>
								</div>
							</div>
							<div class="modal-item phoneItem">
								<span class="item-title">电话号码</span>
								<div class="item-content">
									<input type="tel" maxlength="20" name="mobile" value=""
										data-panel="phone">
									<div class="wrong_input_tips">手机号码格式错误，请重新输入</div>
								</div>
							</div>
							<div class="modal-item emailItem">
								<span class="item-title">联系邮箱</span>
								<div class="item-content">
									<input type="email" maxlength="100" name="email" value=""
										data-panel="email"> <span class="wrong_input_tips">邮箱格式错误，请重新输入</span>
								</div>
							</div>
							<div class="modal-item oneItem">
								<span class="item-title">一句话描述</span><br />
								<div class="item-content">
									<input type="text" maxlength="50" data-panel="one"
										name="minSummary">
								</div>
							</div>
							<div class="modal-item defindItem">
								<a href="javascript:;" class="openDefind 500dtongji"
									data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-自定义字段添加" id="addDefind">自定义字段</a>
							</div>
						</div>
						<div class="openMore 500dtongji"
							data_track="PC-在线制作-基本信息弹框（文档）-基本填写项-基本填写项-展开选填项" id="openMore"
							data-open="false">
							<span data-open="false">展开选填项</span>
						</div>
						<div class="moreMsg clearfix" style="display: none;">
							<span class="tip">以下内容无需全部填写，请选择重要内容展示</span>
							<div class="inner">
								<div class="modal-item sexItem">
									<span class="item-title">你的性别</span>
									<div class="item-content">
										<label for="sexB" class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-性别男">
											<div>
												<span value="1" class="checkhd" data-textLang="male">男</span>
												<input type="radio" name="sex" value="male" id="sexB">
												<span class="checkft"></span>
											</div>
										</label> <label for="sexG" class="500dtongji"
											data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-性别女">
											<div>
												<span value="2" class="checkhd" data-textLang="female">女</span>
												<input type="radio" name="sex" value="female" id="sexG">
												<span class="checkft"></span>
											</div>
										</label>
									</div>
								</div>
								<div class="modal-item">
									<span class="item-title">最高学历</span>
									<div class="item-content bSelect">
										<span>选择最高学历</span> <input type="hidden" name="education"
											value="" data-panel="highedu">
										<ul class="select">
											<li data-value="junior" data-textLang="junior"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-学历1">初中及以下</li>
											<li data-value="high" data-textLang="height"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-学历2">高中</li>
											<li data-value="technical" data-textLang="technical"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-学历3">中技</li>
											<li data-value="polytechnic" data-textLang="polytechnic"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-学历4">中专</li>
											<li data-value="associate" data-textLang="associate"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-学历5">大专</li>
											<li data-value="bachelor" data-textLang="bachelor"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-学历6">本科</li>
											<li data-value="master" data-textLang="master"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-学历7">硕士</li>
											<li data-value="doctorate" data-textLang="doctorate"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-学历8">博士</li>
											<li data-value="mba" class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-学历9">MBA</li>
										</ul>
									</div>
								</div>
								<div class="modal-item">
									<span class="item-title">你的民族</span>
									<div class="item-content">
										<input type="text" maxlength="10" name="nation"
											data-panel="nation">
									</div>
								</div>
								<div class="modal-item">
									<span class="item-title">婚姻状况</span>
									<div class="item-content bSelect">
										<span>选择婚姻状况</span> <input type="hidden" name="marriageStatus"
											value="" data-panel="marital">
										<ul class="select">
											<li data-value="unMarried" data-textLang="umMarried"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-婚姻状况1">未婚</li>
											<li data-value="married" data-textLang="married"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-婚姻状况2">已婚</li>
											<li data-value="privary" data-textLang="private"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-婚姻状况3">保密</li>
										</ul>
									</div>
								</div>
								<div class="modal-item">
									<span class="item-title">政治面貌</span>
									<div class="item-content bSelect">
										<span>选择政治面貌</span> <input type="hidden"
											name="politicalStatus" value="" data-panel="status">
										<ul class="select">
											<li data-value="partyMember" data-textLang="party"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-政治面貌1">中共党员</li>
											<li data-value="probationaryParty"
												data-textLang="probationaryParty" class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-政治面貌6">中共预备党员</li>
											<li data-value="leagueMember" data-textLang="league"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-政治面貌2">共青团员</li>
											<li data-value="democraticParty" data-textLang="demo"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-政治面貌3">民主党派人士</li>
											<li data-value="noParty" data-textLang="noParty"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-政治面貌4">无党派民主人士</li>
											<li data-value="citizen" data-textLang="citizen"
												class="500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-基本信息-政治面貌5">普通公民</li>
										</ul>
									</div>
								</div>
								<div class="modal-item statureItem">
									<span class="item-title">身高/体重</span>
									<div class="item-content">
										<input type="text" maxlength="3" name="height"
											data-panel="height"> <span>cm</span> <input
											type="text" maxlength="3" name="weight" data-panel="weight">
										<span>Kg</span>
									</div>
								</div>
								<!--修改，加入标签部分 & 新社交个人主页-->
								<div class="modal-item tag_item ">
									<span class="item-title">我的标签</span>
									<div class="item-content">
										<div class="pasted_tags">
											<span class="pasted_tips">还可以贴<i>3</i>个标签
											</span>
										</div>
										<div class="add_tag">
											<span class="add_tips">供您参考的标签</span> <a href="javascript:;"
												class="renovate_tag 500dtongji"
												data_track="PC-在线制作-基本信息弹框（文档）-展开选填项-展开选填项-换一批标签">换一批</a>
											<div class="tag_search_bar">
												<input type="text" placeholder="自己写的标签（仅限6个字）" maxlength="6">
												<a href="javascript:;" class="pasted_get_tag 500dtongji"
													data_track="PC-在线制作-基本信息弹框（文档）-展开选填项-展开选填项-贴上某标签">贴上</a>
											</div>
											<div class="tag_bar"></div>
										</div>
									</div>
								</div>
								<div class="modal-item self_and_social" id="self_and_social">
									<div class="add_button_bar">
										<a href="javascript:;" class="add_social" id="add_social">添加社交账号/主页地址</a>
										<div class="chose_social_modal">
											<div class="chose_social_content">
												<ul class="chose_social">
													<li href="javascript:;" class="social_list checked"
														data-social="wx"><i></i><span>微信</span></li>
													<li href="javascript:;" class="social_list"
														data-social="qq"><i></i><span>QQ</span></li>
													<li href="javascript:;" class="social_list"
														data-social="zh"><i></i><span>知乎</span></li>
													<li href="javascript:;" class="social_list"
														data-social="wb"><i></i><span>微博</span></li>
													<li href="javascript:;" class="social_list"
														data-social="dd"><i></i><span>钉钉</span></li>
													<li href="javascript:;" class="social_list add_self"
														id="addSelf"><i></i><span>自定义主页</span></li>
												</ul>
												<div class="chose_button_bar">
													<a href="javascript:;" class="cancel_chose">取消</a> <a
														href="javascript:;" class="ok_chose">选好了</a>
												</div>
											</div>
										</div>
									</div>
									<ul class="social_bar">
										<li class="social_list wx_list hidden">
											<div class="social_list_header"></div>
											<div class="social_list_body">
												<input type="text" placeholder="输入微信号" name="weixin"
													data-panel="wx">
											</div>
											<div class="social_list_footer"></div>
										</li>
										<li class="social_list qq_list hidden">
											<div class="social_list_header"></div>
											<div class="social_list_body">
												<input type="text" placeholder="输入QQ号" name="qq"
													data-panel="qq">
											</div>
											<div class="social_list_footer"></div>
										</li>
										<li class="social_list zh_list hidden">
											<div class="social_list_header"></div>
											<div class="social_list_body">
												<input type="text" placeholder="知乎主页地址" name="zhihu"
													data-panel="zh">
											</div>
											<div class="social_list_footer"></div>
										</li>
										<li class="social_list wb_list hidden">
											<div class="social_list_header"></div>
											<div class="social_list_body">
												<input type="text" placeholder="微博主页地址" name="weibo"
													data-panel="wb">
											</div>
											<div class="social_list_footer"></div>
										</li>
										<li class="social_list dd_list hidden">
											<div class="social_list_header"></div>
											<div class="social_list_body">
												<input type="text" placeholder="输入钉钉号" name="dingding"
													data-panel="dd">
											</div>
											<div class="social_list_footer"></div>
										</li>
									</ul>
									<ul class="self_bar">
									</ul>
								</div>
								<!--end-->
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="button submit 500dtongji"
							data_track="PC-在线制作-基本信息弹框（文档）-外部框-外部框-保存">保存</button>
						<button data-dismiss="modal" aria-hidden="true" type="button"
							class="button cancel 500dtongji"
							data_track="PC-在线制作-基本信息弹框（文档）-外部框-外部框-取消">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--编辑求职意向-->
		<div class="modal fade defaultmodal" id="jobIntension-modal">
			<div class="modal-dialog">
				<div class="modal-content inte-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">编辑求职意向</span>
					</div>
					<div class="modal-body clearfix">
						<div class="modal-item">
							<span class="item-title">意向岗位</span>
							<div class="item-content">
								<input type="text" maxlength="200" name="jobFunction"
									data-panel="inteJob">
							</div>
						</div>
						<div class="modal-item  worktypeItem">
							<span class="item-title">职业类型</span>
							<div class="item-content bSelect">
								<span>选择职业类型</span> <input type="hidden" name="jobType" value=""
									data-panel="inteType">
								<ul class="select">
									<li data-value="fullTime" data-textLang="full"
										class="500dtongji" data_track="在线制作-求职意向编辑页-工作类型1">全职</li>
									<li data-value="partTime" data-textLang="part"
										class="500dtongji" data_track="在线制作-求职意向编辑页-工作类型2">兼职</li>
									<li data-value="intern" data-textLang="intern"
										class="500dtongji" data_track="在线制作-求职意向编辑页-工作类型3">实习</li>
									<li data-value="" class="500dtongji"
										data_track="在线制作-求职意向编辑页-工作类型4">不填写</li>
								</ul>
							</div>
						</div>
						<div class="modal-item">
							<span class="item-title">意向城市</span>
							<div class="item-content citySelect">
								<span>选择意向城市</span> <input type="text" maxlength="20"
									class="inputcity" autofocus placeholder="输入城市名称，按回车键确认">
								<input type="hidden" name="jobCity" value="" data-name=""
									data-panel="chosecity">
							</div>
							<div class="doubleSelect">
								<ul class="leftSelect" data_value="">
									<li class="leftclick">热门城市</li>
									<li>安徽</li>
									<li>湖南</li>
									<li>云南</li>
									<li>河北</li>
									<li>江苏</li>
									<li>吉林</li>
									<li>山东</li>
									<li>甘肃</li>
									<li>福建</li>
									<li>广东</li>
									<li>湖北</li>
									<li>浙江</li>
									<li>海南</li>
									<li>贵州</li>
									<li>辽宁</li>
									<li>青海</li>
									<li>山西</li>
									<li>江西</li>
									<li>四川</li>
									<li>河南</li>
									<li>陕西</li>
									<li>广西</li>
									<li>宁夏</li>
									<li>新疆</li>
									<li>西藏</li>
									<li>黑龙江</li>
									<li>内蒙古</li>
								</ul>
								<ul class="rightSelect">
									<li><a href="javascript:;" data-value="1947">广州</a> <a
										href="javascript:;" data-value="1971">深圳</a> <a
										href="javascript:;" data-value="1">北京</a> <a
										href="javascript:;" data-value="7">上海</a> <a
										href="javascript:;" data-value="927">杭州</a> <a
										href="javascript:;" data-value="2280">成都</a> <a
										href="javascript:;" data-value="2808">西安</a> <a
										href="javascript:;" data-value="811">南京</a> <a
										href="javascript:;" data-value="1165">厦门</a> <a
										href="javascript:;" data-value="18">天津</a> <a
										href="javascript:;" data-value="2240">重庆</a> <a
										href="javascript:;" data-value="1693">武汉</a> <a
										href="javascript:;" data-value="3292">香港</a> <a
										href="javascript:;" data-value="3314">澳门</a> <a
										href="javascript:;" data-value="3219">台湾</a> <a
										id="defindCity">自定义</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="1029">合肥</a> <a href="javascript:;"
										data-value="1039">芜湖</a> <a href="javascript:;"
										data-value="1048">蚌埠</a> <a href="javascript:;"
										data-value="1056">淮南</a> <a href="javascript:;"
										data-value="1063">马鞍山</a> <a href="javascript:;"
										data-value="1070">淮北</a> <a href="javascript:;"
										data-value="1075">铜陵</a> <a href="javascript:;"
										data-value="1080">安庆</a> <a href="javascript:;"
										data-value="1092">黄山</a> <a href="javascript:;"
										data-value="1100">滁州</a> <a href="javascript:;"
										data-value="1109">阜阳</a> <a href="javascript:;"
										data-value="1118">宿州</a> <a href="javascript:;"
										data-value="1124">六安</a> <a href="javascript:;"
										data-value="1132">亳州</a> <a href="javascript:;"
										data-value="1137">池州</a> <a href="javascript:;"
										data-value="1142">宣城</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="1810">长沙</a> <a href="javascript:;"
										data-value="1820">株洲</a> <a href="javascript:;"
										data-value="1830">湘潭</a> <a href="javascript:;"
										data-value="1836">衡阳</a> <a href="javascript:;"
										data-value="1849">邵阳</a> <a href="javascript:;"
										data-value="1862">岳阳</a> <a href="javascript:;"
										data-value="1872">常德</a> <a href="javascript:;"
										data-value="1882">张家界</a> <a href="javascript:;"
										data-value="1887">益阳</a> <a href="javascript:;"
										data-value="1894">郴州</a> <a href="javascript:;"
										data-value="1906">永州</a> <a href="javascript:;"
										data-value="1918">怀化</a> <a href="javascript:;"
										data-value="1931">娄底</a> <a href="javascript:;"
										data-value="1937">湘西土家族苗族自治州</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="2581">昆明</a> <a href="javascript:;"
										data-value="2596">曲靖</a> <a href="javascript:;"
										data-value="2606">玉溪</a> <a href="javascript:;"
										data-value="2616">保山</a> <a href="javascript:;"
										data-value="2622">昭通</a> <a href="javascript:;"
										data-value="2634">丽江</a> <a href="javascript:;"
										data-value="2640">普洱</a> <a href="javascript:;"
										data-value="2651">临沧</a> <a href="javascript:;"
										data-value="2660">楚雄彝族自治州</a> <a href="javascript:;"
										data-value="2671">红河哈尼族彝族自治州</a> <a href="javascript:;"
										data-value="2685">文山壮族苗族自治州</a> <a href="javascript:;"
										data-value="2694">西双版纳傣族自治州</a> <a href="javascript:;"
										data-value="2698">大理白族自治州</a> <a href="javascript:;"
										data-value="2711">德宏傣族景颇族自治州</a> <a href="javascript:;"
										data-value="2717">怒江傈僳族自治州</a> <a href="javascript:;"
										data-value="2722">迪庆藏族自治州</a></li>
									<li data-parent=""><a href="javascript:;" data-value="36">石家庄</a>
										<a href="javascript:;" data-value="60">唐山</a> <a
										href="javascript:;" data-value="75">秦皇岛</a> <a
										href="javascript:;" data-value="83">邯郸</a> <a
										href="javascript:;" data-value="103">邢台</a> <a
										href="javascript:;" data-value="123">保定</a> <a
										href="javascript:;" data-value="149">张家口</a> <a
										href="javascript:;" data-value="167">承德</a> <a
										href="javascript:;" data-value="179">沧州</a> <a
										href="javascript:;" data-value="196">廊坊</a> <a
										href="javascript:;" data-value="207">衡水</a></li>
									<li data-parent=""><a href="javascript:;" data-value="811">南京</a>
										<a href="javascript:;" data-value="825">无锡</a> <a
										href="javascript:;" data-value="834">徐州</a> <a
										href="javascript:;" data-value="845">常州</a> <a
										href="javascript:;" data-value="853">苏州</a> <a
										href="javascript:;" data-value="863">南通</a> <a
										href="javascript:;" data-value="872">连云港</a> <a
										href="javascript:;" data-value="880">淮安</a> <a
										href="javascript:;" data-value="889">盐城</a> <a
										href="javascript:;" data-value="899">扬州</a> <a
										href="javascript:;" data-value="906">镇江</a> <a
										href="javascript:;" data-value="913">泰州</a> <a
										href="javascript:;" data-value="920">宿迁</a></li>
									<li data-parent=""><a href="javascript:;" data-value="581">长春</a>
										<a href="javascript:;" data-value="592">吉林</a> <a
										href="javascript:;" data-value="602">四平</a> <a
										href="javascript:;" data-value="609">辽源</a> <a
										href="javascript:;" data-value="614">通化</a> <a
										href="javascript:;" data-value="622">白山</a> <a
										href="javascript:;" data-value="629">松原</a> <a
										href="javascript:;" data-value="635">白城</a> <a
										href="javascript:;" data-value="641">延边朝鲜族自治州</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="1358">济南</a> <a href="javascript:;"
										data-value="1369">青岛</a> <a href="javascript:;"
										data-value="1382">淄博</a> <a href="javascript:;"
										data-value="1391">枣庄</a> <a href="javascript:;"
										data-value="1398">东营</a> <a href="javascript:;"
										data-value="1404">烟台</a> <a href="javascript:;"
										data-value="1417">潍坊</a> <a href="javascript:;"
										data-value="1430">济宁</a> <a href="javascript:;"
										data-value="1443">泰安</a> <a href="javascript:;"
										data-value="1450">威海</a> <a href="javascript:;"
										data-value="1455">日照</a> <a href="javascript:;"
										data-value="1460">莱芜</a> <a href="javascript:;"
										data-value="1463">临沂</a> <a href="javascript:;"
										data-value="1476">德州</a> <a href="javascript:;"
										data-value="1488">聊城</a> <a href="javascript:;"
										data-value="1497">滨州</a> <a href="javascript:;"
										data-value="1505">菏泽</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="2926">兰州</a> <a href="javascript:;"
										data-value="2935">嘉峪关</a> <a href="javascript:;"
										data-value="2936">金昌</a> <a href="javascript:;"
										data-value="2939">白银</a> <a href="javascript:;"
										data-value="2945">天水</a> <a href="javascript:;"
										data-value="2953">武威</a> <a href="javascript:;"
										data-value="2958">张掖</a> <a href="javascript:;"
										data-value="2965">平凉</a> <a href="javascript:;"
										data-value="2973">酒泉</a> <a href="javascript:;"
										data-value="2981">庆阳</a> <a href="javascript:;"
										data-value="2990">定西</a> <a href="javascript:;"
										data-value="2998">陇南</a> <a href="javascript:;"
										data-value="3008">临夏回族自治州</a> <a href="javascript:;"
										data-value="3017">甘南藏族自治州</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="1151">福州</a> <a href="javascript:;"
										data-value="1165">厦门</a> <a href="javascript:;"
										data-value="1172">莆田</a> <a href="javascript:;"
										data-value="1178">三明</a> <a href="javascript:;"
										data-value="1191">泉州</a> <a href="javascript:;"
										data-value="1204">漳州</a> <a href="javascript:;"
										data-value="1216">南平</a> <a href="javascript:;"
										data-value="1227">龙岩</a> <a href="javascript:;"
										data-value="1235">宁德</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="1947">广州</a> <a href="javascript:;"
										data-value="1960">韶关</a> <a href="javascript:;"
										data-value="1971">深圳</a> <a href="javascript:;"
										data-value="1978">珠海</a> <a href="javascript:;"
										data-value="1982">汕头</a> <a href="javascript:;"
										data-value="1990">佛山</a> <a href="javascript:;"
										data-value="1996">江门</a> <a href="javascript:;"
										data-value="2004">湛江</a> <a href="javascript:;"
										data-value="2014">茂名</a> <a href="javascript:;"
										data-value="2021">肇庆</a> <a href="javascript:;"
										data-value="2030">惠州</a> <a href="javascript:;"
										data-value="2036">梅州</a> <a href="javascript:;"
										data-value="2045">汕尾</a> <a href="javascript:;"
										data-value="2050">河源</a> <a href="javascript:;"
										data-value="2057">阳江</a> <a href="javascript:;"
										data-value="2062">清远</a> <a href="javascript:;"
										data-value="2071">东莞</a> <a href="javascript:;"
										data-value="2072">中山</a> <a href="javascript:;"
										data-value="2073">潮州</a> <a href="javascript:;"
										data-value="2077">揭阳</a> <a href="javascript:;"
										data-value="2083">云浮</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="1693">武汉</a> <a href="javascript:;"
										data-value="1707">黄石</a> <a href="javascript:;"
										data-value="1714">十堰</a> <a href="javascript:;"
										data-value="1723">宜昌</a> <a href="javascript:;"
										data-value="1737">襄阳</a> <a href="javascript:;"
										data-value="1747">鄂州</a> <a href="javascript:;"
										data-value="1751">荆门</a> <a href="javascript:;"
										data-value="1757">孝感</a> <a href="javascript:;"
										data-value="1765">荆州</a> <a href="javascript:;"
										data-value="1774">黄冈</a> <a href="javascript:;"
										data-value="1785">咸宁</a> <a href="javascript:;"
										data-value="1792">随州</a> <a href="javascript:;"
										data-value="1796">恩施土家族苗族自治州</a> <a href="javascript:;"
										data-value="1805">仙桃</a> <a href="javascript:;"
										data-value="1806">潜江</a> <a href="javascript:;"
										data-value="1807">天门</a> <!--<a href="javascript:;" data-value="1808">神农架林区</a>-->
									</li>
									<li data-parent=""><a href="javascript:;" data-value="927">杭州</a>
										<a href="javascript:;" data-value="941">宁波</a> <a
										href="javascript:;" data-value="953">温州</a> <a
										href="javascript:;" data-value="965">嘉兴</a> <a
										href="javascript:;" data-value="973">湖州</a> <a
										href="javascript:;" data-value="979">绍兴</a> <a
										href="javascript:;" data-value="986">金华</a> <a
										href="javascript:;" data-value="996">衢州</a> <a
										href="javascript:;" data-value="1003">舟山</a> <a
										href="javascript:;" data-value="1008">台州</a> <a
										href="javascript:;" data-value="1018">丽水</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="2214">海口</a> <a href="javascript:;"
										data-value="2219">三亚</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="2483">贵阳</a> <a href="javascript:;"
										data-value="2494">六盘水</a> <a href="javascript:;"
										data-value="2499">遵义</a> <a href="javascript:;"
										data-value="2514">安顺</a> <a href="javascript:;"
										data-value="2521">毕节地区</a> <a href="javascript:;"
										data-value="2530">铜仁地区</a> <a href="javascript:;"
										data-value="2541">黔西南布依族苗族自治州</a> <a href="javascript:;"
										data-value="2550">黔东南苗族侗族自治州</a> <a href="javascript:;"
										data-value="2567">黔南布依族苗族自治州</a></li>
									<li data-parent=""><a href="javascript:;" data-value="466">沈阳</a>
										<a href="javascript:;" data-value="480">大连</a> <a
										href="javascript:;" data-value="491">鞍山</a> <a
										href="javascript:;" data-value="499">抚顺</a> <a
										href="javascript:;" data-value="507">本溪</a> <a
										href="javascript:;" data-value="514">丹东</a> <a
										href="javascript:;" data-value="521">锦州</a> <a
										href="javascript:;" data-value="529">营口</a> <a
										href="javascript:;" data-value="536">阜新</a> <a
										href="javascript:;" data-value="544">辽阳</a> <a
										href="javascript:;" data-value="552">盘锦</a> <a
										href="javascript:;" data-value="557">铁岭</a> <a
										href="javascript:;" data-value="565">朝阳</a> <a
										href="javascript:;" data-value="573">葫芦岛</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="3027">西宁</a> <a href="javascript:;"
										data-value="3035">海东</a> <a href="javascript:;"
										data-value="3042">海北</a> <a href="javascript:;"
										data-value="3047">黄南</a> <a href="javascript:;"
										data-value="3052">海南</a> <a href="javascript:;"
										data-value="3058">果洛</a> <a href="javascript:;"
										data-value="3065">玉树</a> <a href="javascript:;"
										data-value="3072">海西</a></li>
									<li data-parent=""><a href="javascript:;" data-value="220">太原</a>
										<a href="javascript:;" data-value="231">大同</a> <a
										href="javascript:;" data-value="243">阳泉</a> <a
										href="javascript:;" data-value="249">长治</a> <a
										href="javascript:;" data-value="263">晋城</a> <a
										href="javascript:;" data-value="271">朔州</a> <a
										href="javascript:;" data-value="278">晋中</a> <a
										href="javascript:;" data-value="290">运城</a> <a
										href="javascript:;" data-value="304">忻州</a> <a
										href="javascript:;" data-value="319">临汾</a> <a
										href="javascript:;" data-value="337">吕梁</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="1246">南昌</a> <a href="javascript:;"
										data-value="1256">景德镇</a> <a href="javascript:;"
										data-value="1261">萍乡</a> <a href="javascript:;"
										data-value="1267">九江</a> <a href="javascript:;"
										data-value="1281">新余</a> <a href="javascript:;"
										data-value="1284">鹰潭</a> <a href="javascript:;"
										data-value="1288">赣州</a> <a href="javascript:;"
										data-value="1307">吉安</a> <a href="javascript:;"
										data-value="1321">宜春</a> <a href="javascript:;"
										data-value="1332">抚州</a> <a href="javascript:;"
										data-value="1344">上饶</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="2280">成都</a> <a href="javascript:;"
										data-value="2300">自贡</a> <a href="javascript:;"
										data-value="2307">攀枝花</a> <a href="javascript:;"
										data-value="2313">泸州</a> <a href="javascript:;"
										data-value="2321">德阳</a> <a href="javascript:;"
										data-value="2328">绵阳</a> <a href="javascript:;"
										data-value="2338">广元</a> <a href="javascript:;"
										data-value="2346">遂宁</a> <a href="javascript:;"
										data-value="2352">内江</a> <a href="javascript:;"
										data-value="2358">乐山</a> <a href="javascript:;"
										data-value="2370">南充</a> <a href="javascript:;"
										data-value="2380">眉山</a> <a href="javascript:;"
										data-value="2387">宜宾</a> <a href="javascript:;"
										data-value="2398">广安</a> <a href="javascript:;"
										data-value="2404">达州</a> <a href="javascript:;"
										data-value="2412">雅安</a> <a href="javascript:;"
										data-value="2421">巴中</a> <a href="javascript:;"
										data-value="2426">资阳</a> <a href="javascript:;"
										data-value="2431">阿坝藏族羌族自治州</a> <a href="javascript:;"
										data-value="2445">甘孜藏族自治州</a> <a href="javascript:;"
										data-value="2464">凉山彝族自治州</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="1516">郑州</a> <a href="javascript:;"
										data-value="1529">开封</a> <a href="javascript:;"
										data-value="1540">洛阳</a> <a href="javascript:;"
										data-value="1556">平顶山</a> <a href="javascript:;"
										data-value="1567">安阳</a> <a href="javascript:;"
										data-value="1577">鹤壁</a> <a href="javascript:;"
										data-value="1583">新乡</a> <a href="javascript:;"
										data-value="1596">焦作</a> <a href="javascript:;"
										data-value="1607">濮阳</a> <a href="javascript:;"
										data-value="1614">许昌</a> <a href="javascript:;"
										data-value="1621">漯河</a> <a href="javascript:;"
										data-value="1627">三门峡</a> <a href="javascript:;"
										data-value="1634">南阳</a> <a href="javascript:;"
										data-value="1648">商丘</a> <a href="javascript:;"
										data-value="1658">信阳</a> <a href="javascript:;"
										data-value="1669">周口</a> <a href="javascript:;"
										data-value="1680">驻马店</a> <a href="javascript:;"
										data-value="1691">济源</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="2808">西安</a> <a href="javascript:;"
										data-value="2822">铜川</a> <a href="javascript:;"
										data-value="2827">宝鸡</a> <a href="javascript:;"
										data-value="2840">咸阳</a> <a href="javascript:;"
										data-value="2855">渭南</a> <a href="javascript:;"
										data-value="2867">延安</a> <a href="javascript:;"
										data-value="2881">汉中</a> <a href="javascript:;"
										data-value="2893">榆林</a> <a href="javascript:;"
										data-value="2906">安康</a> <a href="javascript:;"
										data-value="2917">商洛</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="2090">南宁</a> <a href="javascript:;"
										data-value="2103">柳州</a> <a href="javascript:;"
										data-value="2114">桂林</a> <a href="javascript:;"
										data-value="2132">梧州</a> <a href="javascript:;"
										data-value="2140">北海</a> <a href="javascript:;"
										data-value="2145">防城港</a> <a href="javascript:;"
										data-value="2150">钦州</a> <a href="javascript:;"
										data-value="2155">贵港</a> <a href="javascript:;"
										data-value="2161">玉林</a> <a href="javascript:;"
										data-value="2168">百色</a> <a href="javascript:;"
										data-value="2181">贺州</a> <a href="javascript:;"
										data-value="2186">河池</a> <a href="javascript:;"
										data-value="2198">来宾</a> <a href="javascript:;"
										data-value="2205">崇左</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="3079">银川</a> <a href="javascript:;"
										data-value="3086">石嘴山</a> <a href="javascript:;"
										data-value="3090">吴忠</a> <a href="javascript:;"
										data-value="3096">固原</a> <a href="javascript:;"
										data-value="3102">中卫</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="3107">乌鲁木齐</a> <a href="javascript:;"
										data-value="3116">克拉玛依</a> <a href="javascript:;"
										data-value="3121">吐鲁番</a> <a href="javascript:;"
										data-value="3125">哈密</a> <a href="javascript:;"
										data-value="3129">昌吉</a> <a href="javascript:;"
										data-value="3151">阿克苏</a> <a href="javascript:;"
										data-value="3166">喀什</a> <a href="javascript:;"
										data-value="3179">和田</a> <a href="javascript:;"
										data-value="3188">伊犁</a> <a href="javascript:;"
										data-value="3199">塔城</a> <a href="javascript:;"
										data-value="3207">阿勒泰</a> <a href="javascript:;"
										data-value="3215">石河子</a></li>
									<li data-parent=""><a href="javascript:;"
										data-value="2727">拉萨</a> <a href="javascript:;"
										data-value="2736">昌都</a> <a href="javascript:;"
										data-value="2748">山南</a> <a href="javascript:;"
										data-value="2761">日喀则</a> <a href="javascript:;"
										data-value="2780">那曲</a> <a href="javascript:;"
										data-value="2791">阿里</a> <a href="javascript:;"
										data-value="2799">林芝</a></li>
									<li data-parent=""><a href="javascript:;" data-value="651">哈尔滨</a>
										<a href="javascript:;" data-value="670">齐齐哈尔</a> <a
										href="javascript:;" data-value="687">鸡西</a> <a
										href="javascript:;" data-value="697">鹤岗</a> <a
										href="javascript:;" data-value="706">双鸭山</a> <a
										href="javascript:;" data-value="715">大庆</a> <a
										href="javascript:;" data-value="725">伊春</a> <a
										href="javascript:;" data-value="743">佳木斯</a> <a
										href="javascript:;" data-value="754">七台河</a> <a
										href="javascript:;" data-value="759">牡丹江</a> <a
										href="javascript:;" data-value="770">黑河</a> <a
										href="javascript:;" data-value="777">绥化</a> <a
										href="javascript:;" data-value="788">大兴安岭地区</a></li>
									<li data-parent=""><a href="javascript:;" data-value="352">呼和浩特</a>
										<a href="javascript:;" data-value="362">包头</a> <a
										href="javascript:;" data-value="372">乌海</a> <a
										href="javascript:;" data-value="376">赤峰</a> <a
										href="javascript:;" data-value="389">通辽</a> <a
										href="javascript:;" data-value="398">鄂尔多斯</a> <a
										href="javascript:;" data-value="407">呼伦贝尔</a> <a
										href="javascript:;" data-value="421">巴彦淖尔</a> <a
										href="javascript:;" data-value="429">乌兰察布</a> <a
										href="javascript:;" data-value="441">兴安盟</a> <a
										href="javascript:;" data-value="448">锡林郭勒盟</a> <a
										href="javascript:;" data-value="461">阿拉善盟</a></li>
								</ul>
							</div>
						</div>
						<div class="modal-item">
							<span class="item-title">入职时间</span>
							<div class="item-content bSelect">
								<span>选择入职时间</span> <input type="hidden" name="jobTime" value=""
									data-panel="inteTime">
								<ul class="select">
									<li data-value="immediately" data-textLang="immediately"
										class="500dtongji" data_track="在线制作-求职意向编辑页-到岗时间1">随时到岗</li>
									<li data-value="withinOneWeek" data-textLang="oneW"
										class="500dtongji" data_track="在线制作-求职意向编辑页-到岗时间2">1周内到岗</li>
									<li data-value="withinOneMonth" data-textLang="oneM"
										class="500dtongji" data_track="在线制作-求职意向编辑页-到岗时间3">1个月内到岗</li>
									<li data-value="withinThreemonth" data-textLang="threeM"
										class="500dtongji" data_track="在线制作-求职意向编辑页-到岗时间4">3个月内到岗</li>
									<li data-value="toBeDetermined" data-textLang="determined"
										class="500dtongji" data_track="在线制作-求职意向编辑页-到岗时间5">到岗时间另议</li>
									<li data-value="" class="500dtongji"
										data_track="在线制作-求职意向编辑页-到岗时间6">不填写</li>
								</ul>
							</div>
						</div>
						<div class="modal-item salaryItem">
							<span class="item-title">薪资要求</span>
							<div class="item-content monthly">
								<input type="text" maxlength="3" name="jobMinSalary"
									onkeyup="value=value.replace(/[^\d]/g,'')"
									placeholder="请输入数字..."> <span>K至</span> <input
									type="text" maxlength="3" name="jobMaxSalary"
									onkeyup="value=value.replace(/[^\d]/g,'')"
									placeholder="请输入数字..."> <span>K</span>
							</div>
							<div class="item-content daily">
								<input type="text" maxlength="4" name="jobSalary"> <span
									data-textLang="RMB">元/日</span>
							</div>
							<input type="hidden" name="" value="" data-panel="intePrice">
						</div>
						<div class="modal-item salaryItem">
							<div class="item-content negotiable">
								<input type="checkbox" name="negotiable"> <span>面议</span>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="button submit 500dtongji"
							data_track="在线制作-求职意向编辑页-保存按钮">保存</button>
						<button type="button" data-dismiss="modal" aria-hidden="true"
							class="button cancel 500dtongji" data_track="在线制作-求职意向编辑页-取消按钮">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--编辑职业技能-->
		<div class="modal fade defaultmodal" id="skills-modal">
			<div class="modal-dialog">
				<div class="modal-content skill-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">编辑技能特长</span>
					</div>
					<div class="modal-body">
						<div class="skillList">
							<span class="listTitle">常用技能推荐</span>
							<div class="listBody" id="skillistBody"></div>
							<span class="listFooter 500dtongji"
								data_track="PC-在线制作-文档编辑页-模块编辑弹框-技能特长-换一批" id="hh">换一批</span>
						</div>
						<input type="text" placeholder="输入技能名称，按回车键添加" class="skillInput"
							id="skillInput">
						<div class="modal-item addedSkill" id="addedSkill">
							<span class="item-title">已添加的技能</span>
							<div class="item-content">
								<span>英语</span>
								<div class="bSelect">
									<span>选择掌握程度</span> <input type="hidden">
									<ul class="select">
										<li data-value="average" data-textLang="average">一般</li>
										<li data-value="good" data-textLang="good">良好</li>
										<li data-value="advanced" data-textLang="advanced">熟练</li>
										<li data-value="expert" data-textLang="expert">精通</li>
									</ul>
								</div>
								<a href="javascript:;" class="closeDefind"></a>
							</div>
							<div class="item-content">
								<span>javascript</span> <input type="hidden">
								<div class="bSelect">
									<span>选择掌握程度</span>
									<ul class="select">
										<li data-value="average">一般</li>
										<li data-value="good">良好</li>
										<li data-value="advanced">熟练</li>
										<li data-value="expert">精通</li>
									</ul>
								</div>
								<a href="javascript:;" class="closeDefind"></a>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="button submit save_opt">保存</button>
						<button data-dismiss="modal" aria-hidden="true" type="button"
							class="button cancel">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--编辑兴趣爱好-->
		<div class="modal fade defaultmodal" id="hobbys-modal">
			<div class="modal-dialog">
				<div class="modal-content skill-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">编辑兴趣爱好</span>
					</div>
					<div class="modal-body">
						<div class="skillList">
							<span class="listTitle">常用兴趣推荐</span>
							<div class="listBody" id="hobby"></div>
							<span class="listFooter 500dtongji"
								data_track="PC-在线制作-文档编辑页-模块编辑弹框-兴趣爱好-换一批" id="swap">换一批</span>
						</div>
						<input type="text" placeholder="输入兴趣爱好名称，按回车键添加"
							class="skillInput">
						<div class="modal-item addedHobby" id="addedHobby">
							<span class="item-title">已添加的兴趣爱好</span>
							<div class="item-content">
								<span>篮球</span> <a href="javascript:;" class="closeDefind"></a>
							</div>
							<div class="item-content">
								<span>足球</span> <a href="javascript:;" class="closeDefind"></a>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="button submit save_opt">保存</button>
						<button data-dismiss="modal" aria-hidden="true" type="button"
							class="button cancel">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--分享简历-->
		<div class="modal fade smallmodal" id="shareResume-modal">
			<div class="modal-dialog">
				<div class="modal-content share-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close 500dtongji"
							data_track="PC-在线制作-文档编辑页-顶部导航-导航区-分享-关闭" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">分享简历</span>
					</div>
					<div class="modal-body">
						<span class="shareTips">将链接通过QQ、微信等任何方式发给相关人等，对方即可查看简历</span>
						<div class="shareContent">
							<span>http://www.500d.me/cvresume/</span> <input
								class="wbd-vip-lock 500dtongji" data-show-vip-type="resume"
								data_track="PC-在线制作-文档编辑页-顶部导航-导航区-分享-域名修改"
								data_auth='set_domain' type="text" id="visitid" value="">
							<a href="javascript:;" class="shareUrl 500dtongji" id="copyUrl"
								data_track="PC-在线制作-文档编辑页-顶部导航-导航区-分享-复制链接">复制链接</a>
						</div>
					</div>
					<div class="modal-footer">
						<span class="shareTips">注意：请确认本简历的访问权限为「所有人」或「密码访问」，否则外部人士将无法查看。</span>
					</div>
				</div>
			</div>
		</div>
		<!--编辑作品集-->
		<div class="modal fade defaultmodal" id="portfolio-modal">
			<div class="modal-dialog">
				<div class="modal-content portfolio-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">编辑作品集</span>
					</div>
					<div class="modal-body">
						<div class="portfolio-show">
							<div class="showTab">
								<a href="javascript:;" class="textbtn underlinebtn 500dtongji"
									data_track="PC-在线制作-文档编辑页-模块编辑弹框-作品展示-上传图片">上传图片</a><a
									href="javascript:;" class="textbtn 500dtongji"
									data_track="PC-在线制作-文档编辑页-模块编辑弹框-作品展示-在线作品">在线作品</a>
							</div>
							<ul>
								<li id="workList" style="display: block;">
									<div class="portfolio-preview">
										<div class="imgPreview">
											<div class="preview-btn 500dtongji"
												data_track="PC-在线制作-文档编辑页-模块编辑弹框-作品展示-上传图片-上传图片">上传图片</div>
											<div class="cropper">
												<img class="image" src="">
											</div>
											<input style="display: none;" type="file" class="sr-only"
												id="inputImage" name="file"
												accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff"> <span
												class="upload_tips">请上传jpg、png格式，500K以下图片作品集数量不能超过8个</span>
										</div>

									</div>
									<div class="portfolio-tips">
										<input type="text" placeholder="填写作品标题" maxlength="20"
											class="tipsTitle">
										<textarea name="" placeholder="填写作品描述" maxlength="50"
											class="tipsContent"></textarea>
										<a href="javascript:;"></a>
										<div class="area_input_tips">
											<span>0</span>/50
										</div>
									</div>
								</li>
								<li id="linkList" style="display: none;">
									<div class="portfolio-preview">

										<div class="inlinePreview" data-show="false">
											<p class="inlineTitle">www.example.com</p>
											<p class="inlineContent">这里是作品描述</p>
										</div>
									</div>
									<div class="portfolio-tips">
										<input type="text" placeholder="填写作品链接地址" maxlength="100"
											class="tipsTitle">
										<textarea placeholder="填写作品描述" maxlength="50"
											class="tipsContent"></textarea>
										<a href="javascript:;"></a>
										<div class="area_input_tips">
											<span>0</span>/50
										</div>
									</div>
								</li>
							</ul>

						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="button submit save_opt">保存</button>
						<button data-dismiss="modal" aria-hidden="true" type="button"
							class="button cancel">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--编辑头像-->
		<div class="modal fade defaultmodal" id="headimg-modal">
			<div class="modal-dialog">
				<div class="modal-content headimg-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">编辑头像</span>
					</div>
					<div class="modal-body clearfix">
						<p>调整头像尺寸和位置</p>
						<div class="imgPreview">
							<div class="cropper">
								<img id="image1" src="resources/web/cvresume/images/1.jpg">
							</div>
							<!--<div id="headimg-slider"></div>-->
							<input style="display: none;" type="file" class="sr-only"
								id="inputHeadImage" name="file"
								accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
							<p style="display: none;">支持格式：jpg、png,图片大小：1M以内</p>
							<div style="display: none;" class="preview-btn">上传头像</div>
						</div>
					</div>
					<div class="modal-footer">
						<button data-dismiss="modal" aria-hidden="true" type="button"
							class="button cancel 500dtongji" data_track="在线制作-上传照片页-取消按钮">取消</button>
						<button type="button" class="button submit save_opt 500dtongji"
							data_track="在线制作-上传照片页-保存按钮">保存</button>
					</div>
				</div>
			</div>
		</div>
		<!--推荐信邀请-->
		<div class="modal fade defaultmodal" id="recommend-modal">
			<div class="modal-dialog">
				<div class="modal-content recommend-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">推荐信邀请</span>
					</div>
					<div class="modal-body">
						<span>邀请身边重要的人士为你写一封推荐信，可以极大的提升面试邀约率</span>
						<p>我们充分考虑了推荐信撰写的便捷性，只需复制链接发送给对方即可轻松开始撰写，您也可通过手机 扫码发送。</p>
						<div class="recommendContent">
							<span>http://www.500d.me</span><a href="javascript:;"
								id="recommendUrl" class="shareUrl 500dtongji"
								data_track="在线制作-邀请内页-复制按钮">复制</a>
						</div>
						<!--手机预览生成二维码-->


						<div id="preview_qrcode_image" style="text-align: center;"
							data_url=""></div>

						<span class="ewmTips">扫码手机发送</span>
					</div>
					<p class="panelTips">赶快发邀请函给你的同学/同事/领导吧，操作简单，可以有效提升面试邀请率</p>
				</div>
			</div>
		</div>
		<!--编辑超链接-->
		<div class="modal fade smallmodal" id="createLink-modal">
			<div class="modal-dialog">
				<div class="modal-content createLink-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title">编辑超链接</span>
					</div>
					<div class="modal-body">
						<div class="inputURL">
							<span>URL</span> <input type="text">
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" id="addlink" class="button submit">保存</button>
						<button type="button" data-dismiss="modal" aria-hidden="true"
							class="button cancel">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--删除模块弹框-->
		<div class="modal fade smallmodal" id="delete-modal">
			<div class="modal-dialog">
				<div class="modal-content delete-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
					</div>
					<div class="modal-body">
						<span class="delete-title">确定删除当前子模块吗？</span> <span
							class="delete-tips">删除后子模块将无法恢复</span>
					</div>
					<div class="modal-footer">
						<label class="neverNotfy"> <input type="checkbox"
							id="checkedNotfy" class="checkedNotfy"> <span>不再提醒</span>
						</label>
						<button type="button" id="addlink" class="button submit save_opt">确定</button>
						<button type="button" data-dismiss="modal" aria-hidden="true"
							class="button cancel">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--隐藏模块弹框-->
		<div class="modal fade smallmodal" id="hidden-modal">
			<div class="modal-dialog">
				<div class="modal-content delete-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
					</div>
					<div class="modal-body">
						<span class="delete-title">确定删除当前模块吗？</span> <span
							class="delete-tips">删除后你可以在右侧模块管理出恢复显示</span>
					</div>
					<div class="modal-footer">
						<label class="neverNotfy"> <input type="checkbox"
							id="checkedNotfy" class="checkedNotfy"> <span>不再提醒</span>
						</label>
						<button type="button" id="addlink" class="button submit save_opt">确定</button>
						<button type="button" data-dismiss="modal" aria-hidden="true"
							class="button cancel">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--创建英文弹框-->
		<div class="modal fade smallmodal" id="tips-modal">
			<div class="modal-dialog">
				<div class="modal-content delete-content show-swal2">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
					</div>
					<div class="modal-body">
						<span class="delete-title tips_title">确定创建英文简历吗？</span> <span
							class="delete-tips tips_content">当前简历我们将自动为你进行保存</span>
					</div>
					<div class="modal-footer">
						<button type="button" id="addlink" class="button submit">确定</button>
						<button type="button" data-dismiss="modal" aria-hidden="true"
							class="button cancel">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--PDF正在下载-->
		<div class="modal fade smallmodal" id="downloadPDF">
			<div class="dialog">
				<div class="modal-content downloadPDF-content">
					<div class="modal-body">
						<div class="download-bg"></div>
						<span class="panelTitle">正在卖力下载中...</span> <span class="panelTips">已为你自动隐藏不适合在PDF显示的【留言模块】</span>
					</div>
					<div class="modal-footer">
						<label for="PDFcheckedNotfy" class="neverNotfy"> <input
							type="checkbox" id="PDFcheckedNotfy" class="PDFcheckedNotfy">
							<span>不再提醒</span>
						</label>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade importRModal" id="importRModal"
			aria-hidden="true">
			<input name="edit_token" id="edit_token" type="hidden">
			<div class="modal-dialog">
				<div class="modal-content clearfix">
					<div class="title">
						简历导入<a class="close_ right 500dtongji"
							data_track="PC-通用-导入简历弹框-导入简历弹框-导入简历弹框-关闭" data-dismiss="modal"
							aria-hidden="true"></a>
					</div>
					<div class="content">
						<div class="importRnav">
							<h3>选择简历来源</h3>
							<ul class="clearfix">
								<li><input id="qc" class="500dtongji"
									data_track="PC-CV6.5.0-首页-导入简历-简历导入-选择简历来源-前程无忧" type="radio"
									name="importly" checked="checked"><label for="qc"
									class="qc">前程无忧</label></li>
								<li><input id="zl" class="500dtongji"
									data_track="PC-CV6.5.0-首页-导入简历-简历导入-选择简历来源-智联招聘" type="radio"
									name="importly"><label for="zl" class="zl">智联</label></li>
								<li><input id="lg" class="500dtongji"
									data_track="PC-CV6.5.0-首页-导入简历-简历导入-选择简历来源-拉钩" type="radio"
									name="importly"><label for="lg" class="lg">拉勾</label></li>
								<li class="fz"><input id="fz" class="500dtongji"
									data_track="PC-CV6.5.0-首页-导入简历-简历导入-选择简历来源-复制已有简历" type="radio"
									name="importly"><label for="fz" class="fz">复制已有简历</label></li>
							</ul>
						</div>
						<div class="importRcon">
							<ul>
								<li class="qc current">
									<div class="control-div">
										<h3>
											前程无忧简历导入：<i>（智能解析上传文件，为你省去写简历的时间，仅支持html格式）</i>
										</h3>
										<div class="control-upload">
											<div class="upload-con">
												<label>上传附件：</label> <input type="file" name="filename"
													accept=".html,.htm" data_type="51job"> <a
													class="a-input" class="500dtongji"
													data_track="PC-CV6.5.0-首页-导入简历-简历导入-前程无忧简历导入-上传	">选择HTML文件</a><span
													class="addr"></span>
												<div class="progressbar">
													<s><i></i></s><span>0%</span>
												</div>
											</div>
										</div>
										<div class="bd">
											<p>
												<b>如何获取前程无忧html格式的简历？</b>
											</p>
											<h4>
												登录 <a class="500dtongji"
													data_track="PC-在线制作-首页-个人快捷框-个人快捷框-简历导入-前程无忧-官网文字链"
													href="http://www.51job.com" target="_blank">前程无忧</a>，
												进入【我的51Job】-【简历中心】，【预览】想要导出的简历，点击【导出】，选择格式为HTML保存在本地电脑上就可以了。<a
													class="500dtongji" data_track="在线制作-简历导入来源①-详细教程按钮"
													href="http://help.500d.me/help/92.html" target="_blank">还是不知道如何操作？我要看看详细教程。</a>
											</h4>
										</div>
										<div class="control-btn">
											<button type="button" class="500dtongji"
												data_track="PC-CV6.5.0-首页-导入简历-简历导入-底部-导入简历" data_sid="103"
												id="51job_import">导入简历</button>
										</div>
									</div>
								</li>
								<li class="zl">
									<div class="control-div">
										<h3>
											智联简历导入：<i>（智能解析上传文件，为你省去写简历的时间，仅支持html格式）</i>
										</h3>
										<div class="control-upload">
											<div class="upload-con">
												<label>上传附件：</label> <input type="file" name="filename"
													accept=".html,.htm" data_type="zhilian"> <a
													class="a-input 500dtongji"
													data_track="PC-CV6.5.0-首页-导入简历-简历导入-智联简历导入-上传">选择HTML文件</a><span
													class="addr"></span>
												<div class="progressbar">
													<s><i></i></s><span>0%</span>
												</div>
											</div>
										</div>
										<div class="bd">
											<p>
												<b>如何获取智联招聘html格式的简历？</b>
											</p>
											<h4>
												登录 <a class="500dtongji"
													data_track="PC-在线制作-首页-个人快捷框-个人快捷框-简历导入-智联招聘-官网文字链"
													href="http://www.zhaopin.com" target="_blank">智联招聘 </a> 首页，
												进入【简历中心】打开想要导出的简历，找到【更多操作】-【导出】，选择格式为HTML保存在本地电脑上就可以了。<a
													class="500dtongji" data_track="在线制作-简历导入来源②-详细教程按钮"
													href="http://help.500d.me/help/89.html" target="_blank">还是不知道如何操作？我要看看详细教程。</a>
											</h4>
										</div>
										<div class="control-btn">
											<button type="button" class="500dtongji"
												data_track="PC-CV6.5.0-首页-导入简历-简历导入-底部-导入简历" data_sid="104"
												id="zhilian_import">导入简历</button>
										</div>
									</div>
								</li>
								<li class="lg">
									<div class="control-div">
										<h3>
											拉勾简历导入：<i>（智能解析上传文件，为你省去写简历的时间，仅支持html格式）</i>
										</h3>
										<div class="control-upload">
											<div class="upload-con">
												<label>上传附件：</label> <input type="file" name="filename"
													accept=".html,.htm" data_type="lagou"> <a
													class="a-input 500dtongji"
													data_track="PC-CV6.5.0-首页-导入简历-简历导入-拉钩简历导入-上传">选择HTML文件</a><span
													class="addr"></span>
												<div class="progressbar">
													<s><i></i></s><span>0%</span>
												</div>
											</div>
										</div>
										<div class="bd">
											<p>
												<b>如何获取拉勾html格式的简历？</b>
											</p>
											<h4>
												登录 <a href="http://www.lagou.com" target="_blank"
													class="500dtongji"
													data_track="PC-在线制作-首页-个人快捷框-个人快捷框-简历导入-拉勾-官网文字链">拉勾网</a>，进入【我的简历】页面，点击【预览简历】，打开预览界面后在底部点击【下载简历
												】按钮并选择HTML格式就可以了。<a href="http://help.500d.me/help/90.html"
													target="_blank" class="500dtongji"
													data_track="在线制作-简历导入来源③-详细教程按钮">还是不知道如何操作？我要看看详细教程。</a>
											</h4>
										</div>
										<div class="control-btn">
											<button type="button" class="500dtongji"
												data_track="PC-CV6.5.0-首页-导入简历-简历导入-底部-导入简历" data_sid="105"
												id="laggou_import">导入简历</button>
										</div>
									</div>
								</li>
								<li class="fz">
									<div class="control-div">
										<h3>选择需要复制的简历：</h3>
										<div class="control-select">
											<select class="select_change_resume" id="copy_resume_id">
												<option value="">您还未创建过简历</option>
											</select>
										</div>
										<div class="upload-con">
											<div class="progressbar">
												<s><i></i></s><span>0%</span>
											</div>
										</div>
										<div class="bd">
											<p>此处是复制你创建的在线简历，适合需要投递几家公司，内容做小小修改的你。</p>
											<h5>
												<a href="http://help.500d.me/help/91.html" target="_blank"
													class="500dtongji"
													data_track="PC-在线制作-首页-个人快捷框-个人快捷框-简历导入-教程文字链(all)">还是不知道如何操作？我要看看详细教程。</a>
											</h5>

										</div>
										<div class="control-btn">
											<button type="button" id="copyt_import" class="500dtongji"
												data_track="PC-在线制作-首页-个人快捷框-个人快捷框-简历导入-导入简历">导入简历</button>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="modal fade importRsuccModal reset" id="importResetModal">
			<div class="modal-dialog">
				<div class="modal-content clearfix">
					<a class="close_ right" data-dismiss="modal" aria-hidden="true"></a>
					<div class="img">
						<img src="resources/web/editresume/images/zxbj/kt2.jpg">
					</div>
					<div class="content">
						<h2>简历导入失败</h2>
						<p class="tips_show">由于你选择的文件与账号不符，请重新导入。</p>
					</div>
					<div class="bd">
						<a class="show_import_btn" data-dismiss="modal" aria-hidden="true">重新导入</a>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade importRsuccModal reset" id="importResetModal2">
			<div class="modal-dialog">
				<div class="modal-content clearfix">
					<a class="close_ right" data-dismiss="modal" aria-hidden="true"></a>
					<div class="img">
						<img src="resources/web/editresume/images/zxbj/kt2.jpg">
					</div>
					<div class="content">
						<h2>简历导入失败</h2>
						<p class="tips_show">超出最大创建简历数量，请删除部分简历或升级会员后继续</p>
					</div>
					<div class="bd">
						<a href="/order/vip_member/" target="_blank">升级会员</a><a
							href="/member/myresume/" target="_blank">去删除</a>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade importRsuccModal reset" id="importResetModal3">
			<div class="modal-dialog">
				<div class="modal-content clearfix">
					<a class="close_ right" data-dismiss="modal" aria-hidden="true"></a>
					<div class="img">
						<img src="resources/web/editresume/images/zxbj/kt2.jpg">
					</div>
					<div class="content">
						<h2>简历创建失败</h2>
						<p class="tips_show">超出最大创建简历数量，请删除部分简历或升级会员后继续</p>
					</div>
					<div class="bd">
						<a href="/order/vip_member/" target="_blank">升级会员</a><a
							href="/member/myresume/" target="_blank">去删除</a>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade importRsuccModal" id="importRsuccModal">
			<div class="modal-dialog">
				<div class="modal-content clearfix">
					<a class="close_ right" data-dismiss="modal" aria-hidden="true"></a>
					<div class="img">
						<img src="resources/web/editresume/images/zxbj/kt1.jpg">
					</div>
					<div class="content">
						<h2>简历导入成功</h2>
						<p>恭喜你的简历导入成功，现在去编辑吧~</p>
					</div>
					<div class="bd">
						<a href="/member/myresume/">立即编辑</a>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade importRsuccModal" id="51importRsuccModal1">
			<div class="modal-dialog">
				<div class="modal-content clearfix">
					<a class="close_ right" data-dismiss="modal" aria-hidden="true"></a>
					<div class="img">
						<img src="resources/web/editresume/images/zxbj/kt1.jpg">
					</div>
					<div class="content">
						<h2>简历导入成功</h2>
						<p>恭喜你的简历导入成功，请选择一份简历去编辑吧~</p>
						<select id="selectresume">
						</select>
					</div>
					<div class="bd">
						<a id="selectresumeEdit">立即编辑</a>
					</div>
				</div>
			</div>
		</div>
		<!--简历发布成功-->
		<div class="modal fade smallmodal" id="releaseResume">
			<div class="dialog">
				<div class="modal-content releaseResume-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
					</div>
					<div class="modal-body">
						<span class="releaseTitle">恭喜，你的简历发布成功！</span> <span
							class="releaseTips">我们同时为你生成了另外一种形态的档案，点击查看</span> <a
							href="javascript:;" class="imgExplain"> <span>手机简历</span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!--简历命名弹框-->
		<div class="modal fade smallmodal" id="resumeName">
			<div class="dialog">
				<div class="modal-content resumeName-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true"></button>
						<span class="modal-title" id="myModalLabel" select="none">简历命名</span>
					</div>
					<div class="modal-body">
						<span>亲，给简历起个名字吧</span> <input type="text" value=""
							placeholder="例如：网络安全工程师简历模板">
					</div>
					<div class="modal-footer">
						<button type="button" class="button submit">确定</button>
						<button type="button" data-dismiss="modal" aria-hidden="true"
							class="button cancel">取消</button>
					</div>
				</div>
			</div>
		</div>
		<!--预览状态底部提示-->
		<div class="bottom-modal show-swal3"
			style="display: block; bottom: -150px;">
			<span class="close 500dtongji"
				data_track="PC-在线制作-文档编辑页-底部浮标-底部浮标-关闭"></span><i class="icon">1</i>请注意，当前处于预览状态，数据不会被保存，请
			<a href="/login/" class="500dtongji"
				data_track="PC-在线制作-文档编辑页-底部浮标-底部浮标-登陆" target="_blank">登录</a> 后制作
		</div>
		<!--右侧 - 简历诊断弹框-->
		<div class="right_default_modal diagnose_modal"
			id="resume_diagnose_modal">
			<div class="inner">
				<div class="diagnose_content">
					<div class="diagnose_head">
						<span class="close"></span>
						<h3>简历诊断智能优化建议</h3>
						<span class="diagnosis_count">共6条</span>
					</div>
					<div class="diagnose_body">
						<ul></ul>
						<a href="javascript:;" class="diagnose_aging">重新诊断</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" id="resume_content" name="resume_content"
		value="<c:out value="${resume_content}"/>">
	<div class="wbdCv-container resume ">
		<%@ include file="WEB-INF/resume206.jsp"%>
	</div>
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
						data-placeholder-tips="在这里留言，我将尽快联系你。" data-placeLang="contactTip"></div>
					<div class="contact-main">
						<div class="name resume_contact_name" contenteditable="true"
							data-placeholder="姓名" data-placeLang="contactName"></div>
						<div class="phone resume_contact_mobile" contenteditable="true"
							data-placeholder="电话" data-placeLang="contactEmail"></div>
						<div class="text resume_contact_content" contenteditable="true"
							data-placeholder-tips="留言内容。" data-placeLang="contactMsg"></div>
						<button data-textLang="send" class="500dtongji"
							data_track="PC-在线制作-文档编辑页-中间简历编辑-联系我-发送">发送</button>
					</div>
				</div>
			</dd>
		</dl>
	</div>
	<script>
		$(function() {
			$("#resume_contact .btn").click(function() {
				cvresume.main.contact_me();
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
	<!--右侧悬浮 诊断、小贴士、案例库、工单客服-->
	<div class="cvresume_right_bar">
		<!--诊断-->
		<a href="javascript:;" class="diagnose_bar 500dtongji"
			data_track="PC-CV6.6.1-在线制作-文档编辑页-右侧功能-右侧功能-诊断"><i></i><span>诊断</span></a>
		<!--小贴士-->
		<a href="javascript:;" class="tips_bar 500dtongji"
			data_track="PC-在线制作-文档编辑页-右侧功能-右侧功能-贴士"><i></i><span>贴士</span></a>

	</div>
	<!--右侧悬浮小贴士弹框-->
	<div class="right_default_modal tips_bar_modal">
		<div class="inner">
			<div class="tips_content">
				<div class="tips_hd">
					<div class="tips_head">
						<span class="close 500dtongji"
							data_track="PC-在线制作-查看贴士功能（文档编辑页）-左上角-左上角-缩回"></span> <a
							class="checked 500dtongji"
							data_track="PC-在线制作-查看贴士功能（文档编辑页）-顶部按钮-顶部按钮-小贴士" title="小贴士"
							href="#">小贴士</a>
						<!-- 							<a href="javascript:;" title="案例库" -->
						<!-- 							class="500dtongji case_bar" -->
						<!-- 							data_track="PC-在线制作-查看贴士功能（文档编辑页）-顶部按钮-顶部按钮-案例库" target="_blank">案例库</a> -->
					</div>

					<div class="tips_content_select">
						<span>基本信息</span>
						<ul>
							<li data-select-id="resume_head">头像</li>
							<li data-select-id="base_info" class="selected">基本信息</li>
							<li data-select-id="resume_job_preference">求职意向</li>
							<li data-select-id="resume_edu">教育背景</li>
							<li data-select-id="resume_work">工作经验</li>
							<li data-select-id="resume_internship">实习经验</li>
							<li data-select-id="resume_project">项目经验</li>
							<li data-select-id="resume_volunteer">志愿者经历</li>
							<li data-select-id="resume_honor">奖项荣誉</li>
							<li data-select-id="resume_skill">技能特长</li>
							<li data-select-id="resume_hobby">兴趣爱好</li>
							<li data-select-id="resume_portfolio">作品展示</li>
							<li data-select-id="resume_summary">自我评价</li>
							<li data-select-id="resume_cover">封面</li>
							<li data-select-id="resume_letter">自荐信</li>
						</ul>
					</div>
				</div>
				<div class="tips_content_text">
					<ul>
						<!--头像-->
						<li data-list-id="resume_head">
							<div class="list show">
								<div class="title">
									<span>◆ 简历上需要放照片吗？</span><i></i>
								</div>
								<div class="text">
									<p>
										此为非必选项，但如果放上去的话请务必让它成为加分项，毕竟这个看脸的世界越来越没有道理可言了，如果翻遍电脑和手机都没有找到一张可以称得上有气质的照片，那还是别放了。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 照片有什么标准规范？</span><i></i>
								</div>
								<div class="text">
									<p>
										建议使用1-6个月的近期免冠照片，男性请至少干净整洁，不要显得油腻，女生可化淡妆，正常的生活/工作照也可，表情动作大方自然，背景清新简洁的正脸半身照为佳
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 错误示范</span><i></i>
								</div>
								<div class="text">
									<p>N年前的老照片</p>
									<p>卖萌自拍照</p>
									<p>旅游风景照</p>
									<p>大头贴</p>
									<p>多人合影</p>
									<p>对方未要求时使用全身照或非正面照</p>
									<p>浓妆</p>
									<p>卡通形象等非本人照</p>
									<p>与本人真实相貌差距过大</p>
								</div>
							</div>
						</li>
						<!--基本信息-->
						<li data-list-id="base_info" class="selected">
							<div class="list show">
								<div class="title">
									<span>◆ 必填信息</span><i></i>
								</div>
								<div class="text">
									<p>姓名/所在城市/电话号码/联系邮箱</p>
									<p>
										<b style="color: #5d6876;">&#8730; 姓名</b>
									</p>
									<p>重要信息一定要写清楚，错误示范：张先生/李女士</p>
									<p>如果有常用英文名，可以在中文名后面写在括号里，如：李娜（Abby）</p>
									<p>没有常用英文名的话，则不建议专门为了工作而取名，否则面试时对方喊你却没有反应，可能会留下负面印象。</p>
									<p>
										<b style="color: #5d6876;">&#8730; 所在城市</b>
									</p>
									<p>
										如目前所处城市跟意向工作城市有出入的话，会影响HR的面试邀约决策，为了提升双方沟通效率，建议填写，如往来意向城市很方便或短期内会搬过去居住，注明即可。
									</p>
									<p>
										<b style="color: #5d6876;">&#8730; 电话号码</b>
									</p>
									<p>建议写成易于拨打的形式，如：185-5555-5555</p>
									<p>如果是英文简历，则建议加上区号，如：+86-10-12308</p>
									<p>
										<b style="color: #5d6876;">&#8730; 联系邮箱</b>
									</p>
									<p>
										用国内主流邮箱产品如@163.com/@qq.com/@sina.com皆可，不存在QQ邮箱很LOW的说法，但是要注意检查你的QQ邮箱名称，以火星文、昵称等作为邮箱名称都会显得不够专业，如果你常年挂着VPN也可以使用@gmail.com，那样显得洋气点，能为你的求职形象+1分。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 一句话描述怎么写？</span><i></i>
								</div>
								<div class="text">
									<p>用一句话陈述你的求职意向及自身优势，如“8年淘宝运营老鸟”、“10w+微信文章撰写经验”</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 其他字段都必须写么？</span><i></i>
								</div>
								<div class="text">
									<p>
										视情况而定，如官方招聘信息中有明确提到相关要求，则建议对相关项如实填写。如：要求工作经验5年；仅限党员；身高不得低于168cm；少数民族优先等。
									</p>
									<p>如职位描述(Job
										Description)中没有明确要求，则不建议填写多余的基本信息，过多的冗余信息会增加HR阅读简历的负担，给人不专业的感觉。
									</p>
									<p>设计师或技术类人员建议添加个人主页，更好的展示自己。</p>
									<p>如：</p>
									<p>
										技术博客：<a href="https://pages.github.com/" target="_blank">https://pages.github.com/</a>
									</p>
									<p>
										Github：<a href="https://github.com/geek" target="_blank">https://github.com/geek</a>
									</p>
									<p>
										<a href="http://www.zcool.com.cn/" target="_blank">站酷</a>、<a
											href="http://www.ui.cn/" target="_blank">UI中国</a>、<a
											href="http://huaban.com/" target="_blank">花瓣</a>等
									</p>
									<p>PS.不要放非本人做的作品，如你只是个打杂的，结果把整个项目都放上去了…少点套路，世界会更美好</p>
								</div>
							</div>

						</li>
						<!--求职意向-->
						<li data-list-id="resume_job_preference">
							<div class="list show">
								<div class="title">
									<span>◆ 填写意向岗位有什么规范？</span><i></i>
								</div>
								<div class="text">
									<p>如四大、国有银行等在招聘信息中不分具体职能部门的话，可以不写求职意向。</p>
									<p>如需要填写求职意向，则建议一份简历只针对一个意向岗位。</p>
									<p>
										<b style="color: #5d6876;">错误示范：过于宽泛</b>
									</p>
									<p>如：意向岗位：客服/行政/行政/后勤/HR</p>
									<p>
										<b style="color: #5d6876;">注意：</b>多个意向岗位出现在一份简历中，没有针对性，会给HR一个信息：这个求职者的职业规划十分混乱
									</p>
									<p>
										<b style="color: #5d6876;">推荐写法：精准的职位名称/行业+职位名称</b>
									</p>
									<p>如：</p>
									<p>网易游戏_泛娱乐运营策划</p>
									<p>人事专员/人力资源相关岗位</p>
									<p>食品领域销售类岗位</p>
									<p>机械行业商务谈判岗</p>
									<p>
										<b style="color: #5d6876;">注意：</b>求职意向是整张简历的核心，千万不要觉得面对不同企业和岗位，改个求职意向就可以海投了，求职意向和简历内容一定要相互呼应，才能最好的展现自己的岗位匹配度。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 职业类型</span><i></i>
								</div>
								<div class="text">
									<p>毕业了原则上不能再申请实习生的岗位，</p>
									<p>
										<b style="color: #5d6876;">实习</b>只有在校生可以申请，有可能转正。
									</p>
									<p>
										<b style="color: #5d6876;">兼职</b>可以是在校生也可以是职场人，是指在不脱离本职工作（或学习）的前提下，利用业余时间从事第二职业，以获得利益。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 意向工作城市</span><i></i>
								</div>
								<div class="text">
									<p>若某企业针对同一岗位在多个地区均设有招聘，那么意向城市就一定要写清楚，免得被调岗后又不愿意前往。</p>
									<p>写明意向城市也能表明自己在投递简历前对目标企业有了一定了解，且表现了自己强烈的求职意愿。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 入职时间</span><i></i>
								</div>
								<div class="text">
									<p>离职前，试用期员工须提前3天告知企业，正式员工则需提前一个月告知，求职者根据自身情况如实填写即可。</p>
									<p>面试官会根据岗位的实际用人情况合理参考求职者的到岗时间，相比此项，工作经验更重要。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 关于薪资要求</span><i></i>
								</div>
								<div class="text">
									<p>
										<a href="http://help.500d.me/topic/view/1213/" target="_blank">期待薪资多少，怎么回答才好？</a>
									</p>
									<p>
										<a href="http://help.500d.me/topic/view/1212/" target="_blank">面试时关于薪资问题怎么回答？</a>
									</p>
								</div>
							</div>
						</li>
						<!--教育背景-->
						<li data-list-id="resume_edu">
							<div class="list show">
								<div class="title">
									<span>◆ 教育背景</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项，大部分情况下建议填写</p>
									<p>
										<b style="color: #5d6876;">注意：</b>工作年限较多或成绩自认不够优异，则可以直接将教育背景清晰罗列后，重点丰富其他模块
									</p>
									<p>
										<b style="color: #5d6876;">必填信息：</b>
									</p>
									<p>教育经历起止日期/学校名称/专业名称/学位</p>
									<p>可填信息：成绩排名/主修课程/辅修课程</p>
									<p>
										<b style="color: #5d6876;">注意：</b>
									</p>
									<p>尽量简洁，突出重点</p>
									<p>成绩优异的话建议写上GPA及排名等信息</p>
									<p>主修课程只写与申请岗位相关的即可，相关性强的写在前面</p>
									<p>未毕业在校生的教育经历结束日期应填写预计毕业年月</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ GPA怎么算？</span><i></i>
								</div>
								<div class="text">
									<p>
										可以参考 College Board 的网站<a
											href="http://www.collegeboard.com/html/academicTracker-howtoconvert.html"
											target="_blank">How to Convert Your GPA to a 4.0 Scale</a>，了解美国最权威的机构
										College Board（美国大学理事会）是如何换算 GPA 的。
									</p>
									<p>关于GPA的常见说法：</p>
									<p>文科/文理学院的 GPA 在 3.6 以上属于比较“高”；</p>
									<p>理科/工程学院的 GPA 在 3.2 以上属于比较“高”。</p>
									<p>如果GPA不算特别高但在学院内排名很高，可以括号注明，如：GPA:3.2/4.0(1/80)</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2014.09-2018.06<br>福建工程学院<br>电气工程及其自动化（本科）
										</b>
									</p>
									<p>GPA：3.72/4（专业前10%）</p>
									<p>GRE：324</p>
									<p>
										主修课程：电力系统（暂态、稳态）分析、发电厂变电所电气设备、发电厂电气主系统、电力调度、变电站综合自动化、可编程控制器技术、电力系统规划等。
									</p>
									<p>
										<b style="color: #5d6876;">注意</b>：SAT/ACT/GRE/GMAT/LSAT这类硬性入学考试成绩可列在教育背景处，托福/雅思等语言成绩则建议在其他模块单独描述。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 错误示范</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2014.09-2018.06<br>福建工程学院<br>金融学（硕士）
										</b>
									</p>
									<p>
										主修课程：线性代数、高等数学、微观经济学、宏观经济学、会计学、统计学、财政学、计量经济学、金融学、金融法、保险学、金融工程学、金融经济学、证券投资学、期货与期权、金融数学、风险投资专题、固定收益证券等。
									</p>
									<p>
										<b style="color: #5d6876;">注意：</b>未说明本科学校及专业情况，主修课程中罗列过多课程，且与岗位相关性不强的专业被放在了前面。
									</p>
								</div>
							</div>
						</li>
						<!--工作经验-->
						<li data-list-id="resume_work">
							<div class="list show">
								<div class="title">
									<span>◆ 工作经验</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项，建议填写</p>
									<p>
										<b style="color: #5d6876;">可填信息：</b>
									</p>
									<p>工作起止日期/所在公司名称/职位/工作描述（侧重描述自己负责的工作）/工作成果</p>
									<p>
										<b style="color: #5d6876;">注意：</b>
									</p>
									<p>工作经验的时间采取倒叙形式，最近经历写在前面；</p>
									<p>工作经验的描述与目标岗位的招聘要求尽量匹配，用词精准；</p>
									<p>工作成果尽量以数据来呈现，突出个人成果以及做出的贡献；</p>
									<p>描述尽量具体简洁。</p>
									<p>可对企业进行简短介绍，如：XX行业第二大XX企业，核心产品包括XX /
										XX行业领军企业，拥有X个分公司和X名员工 / XX领域X轮创业公司，主要产品是XXX，拥有X用户</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 用数据说话</span><i></i>
								</div>
								<div class="text">
									<p>如：</p>
									<p>带领团队/作为核心人员 通过XX 提升X%/节省XX环节XX时间/将销售额提高X%；</p>
									<p>通过XX数据分析公司XX问题，提出XX解决方案成功将XX从X提升至X；</p>
									<p>带领X名队员/在XX的情况下/迅速找到XX解决方案；</p>
									<p>比去年同期提高X%/较同期入职人员高出X倍/比以前团队效率高出X%。</p>
									<p>
										<b style="color: #5d6876;">注意：</b>无法用数据表达的成绩说服力较弱，如“获得领导嘉奖/表扬”之类的成绩尽量不要写。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 如果不方便透露客户名或项目细节怎么办？</span><i></i>
								</div>
								<div class="text">
									<p>
										如果所在行业有严格保密规定（通常投行、咨询、四大等乙方机构都有保护客户隐私的严格规定）可以在简历上大致描述该公司所处行业+项目规模，
										如“某保险行业领军企业XX元债券发行”、“某新能源行业集团省级单位系统整体升级”、“某外资整车厂年审项目”等。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 在同一公司不同部门工作过怎么写？</span><i></i>
								</div>
								<div class="text">
									<p>如果时间没有重叠，可以当做两段工作经历来写，不同职位不同部门。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 在同一公司相同部门升职过怎么写？</span><i></i>
								</div>
								<div class="text">
									<p>通常会以最高职位来写，然后如有需要可以在子标题中描述哪一年升过职。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 学生工作经验</span><i></i>
								</div>
								<div class="text">
									<p>描述学生工作时应注重凸显与目标岗位招聘要求相匹配的能力，匹配度高的经验挑选2-3条即可；</p>
									<p>
										<b style="color: #5d6876;">讲故事+用数据说话：</b>工作内容，做法，做了多少，结果（用数据说话）如实习经验及项目经验已足够证明能力且与目标岗位相匹配，校内学生工作经验可考虑不写。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法1</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2007.04-2011.12<br>福建船舶公司<br>经营部经理
										</b>
									</p>
									<p>● 管理范围：全面负责公司业务方面的所有工作和本部门20余人的综合管理工作；</p>
									<p>● 销售目标：对总经理制定的销售目标负责，实现年国外销售额1.5亿元；</p>
									<p>● 市场工作：负责市场情况、竞争者情况的调研，负责展会布置、营销策划、媒体宣传等市场工作；</p>
									<p>● 销售工作：负责具体的渠道开发、商务洽谈、客户维护、销售流程的管理；</p>
									<p>● 团队管控：负责下属团队20余人的综合管理工作，包含员工培养、任务分解跟踪管理等；</p>
									<p>● 其他业绩：开拓了印度孟加拉越南日本荷兰等多个渠道，为此产生了年均1亿多元的销售额；</p>
									<p>做好客户维护工作，客户稳定率达90%。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法2</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2017.04-至今<br>韩领网络科技（上海）有限公司（Coupang
											China）<br>Java软件开发工程师
										</b>
									</p>
									<p>
										公司简介：Coupang是一家韩国大型的电子商务公司，也是世界上增长最快的电子商务公司。Coupang拥有“韩国亚马逊”之称，其在韩国本土的地位类似中国国内的“京东”。
									</p>
									<p>● 根据开发进度和任务分配，完成相应模块软件的设计、开发、编程任务；</p>
									<p>● 进行程序单元、功能的测试，查出软件存在的缺陷并保证其质量；</p>
									<p>● 按计划完成量化的工作要求，并能独立处理和解决所负责的任务。</p>
									<p>
										<b style="color: #5d6876;">项目：xxxxxx service</b>
									</p>
									<p>
										<b style="color: #5d6876;">开发技术：</b>RabbitMQ/mysql/Spring/redis（版本一）
									</p>
									<p>
										<b style="color: #5d6876;">开发技术：</b>Kafka/mysql/Spring/redis/multi-thread&concurrency（版本二）
									</p>
									<p>
										<b style="color: #5d6876;">注意：</b>若所在公司较为知名，可对公司规模等信息加以介绍
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 学生工作经验示例</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2014.9-2016.9<br>校礼仪队/院文艺部<br>副队/队长
										</b>
									</p>
									<p>
										<b style="color: #5d6876;">工作描述：</b>
									</p>
									<p>1.
										主抓院文艺部全面工作，负责整个学院活动的统筹规划，就活动的细则和程序等相关事宜进行沟通等活动的总体安排和联络；</p>
									<p>2. 全面负责召集各系文艺部长工作会议，发掘、锻炼和培养文艺骨干；</p>
									<p>3. 负责礼仪队员的日常管理、活动培训；</p>
									<p>4. 安排校级院级演出活动、校内外各种比赛及颁奖任务；</p>
									<p>5. 在学生中大力开展美育活动，提高学生的文艺鉴赏能力。</p>
									<p>成果：</p>
									<p>迎新周吸引超过50人报名参加礼仪队，负责学校各种晚会走秀、庆典、比赛、会议等，取得校领导及学生的肯定。</p>
								</div>
							</div>
						</li>
						<!--实习经验-->
						<li data-list-id="resume_internship">
							<div class="list show">
								<div class="title">
									<span>◆ 实习经验</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项，根据实际情况选择</p>
									<p>
										<b style="color: #5d6876;">可填信息：</b>
									</p>
									<p>实习起止日期/所在公司名称/职位/工作描述（侧重描述自己负责的工作）/实习成果</p>
									<p>
										<b style="color: #5d6876;">注意：</b>
									</p>
									<p>实习经验的时间采取倒叙形式，最近经历写在前面；</p>
									<p>实习经验的描述与目标岗位的招聘要求尽量匹配，用词精准；</p>
									<p>实习成果尽量以数据来呈现，突出个人成果以及做出的贡献；</p>
									<p>描述尽量具体简洁。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法1</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2017.03-2017.05<br>福建发展改革委员会<br>行政审批科实习
										</b>
									</p>
									<p>● 文案撰写：负责主任交办的各种文字拟稿工作；</p>
									<p>● 公文签发：收发有关文件、信函、电报等；办理公文的登记编号、签发、分送工作。催办上级和公司限期办理的事项；</p>
									<p>● 会议记录：做好会议记录、整理会议纪要和简报，了解会后的贯彻执行情况；</p>
									<p>● 文档管理：整理并打印公司工作报告、总结、规划、计划、决议、通告等，协助主任审核、校对以公司名义签发的公文稿；
									</p>
									<p>● 资料整理：负责公司大事记和有关资料的采集整理工作；</p>
									<p>● 文件传阅: 负责公司领导的文件传阅，处理公司领导签批的文件、函电，转递单位和个人给公司领导的请示报告等。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法2</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2017.03-2017.05<br>福建发展改革委员会<br>行政审批科实习
										</b>
									</p>
									<p>
										<b style="color: #5d6876;">S：</b>福建自控(Wubaiding
										Controls)是X国《财富》百强企业之一,创立于18XX年,目前已成长为汽车内饰、设施效益、和动力方案方面的全球领导者。
									</p>
									<p>
										<b style="color: #5d6876;">T：</b>主要作为实习生协助该公司Accounts
										Payable澳洲部门的财务日常工作事宜。
									</p>
									<p>
										<b style="color: #5d6876;">A：</b>
									</p>
									<p>● 协助财务部门建立并完善企业财务管理体系，对财务部门的日常管理、财务预算、资金运作等各项工作进行控制操作；</p>
									<p>● 协助财务部门完成账务处理、内部核算、报表、税务等工作；</p>
									<p>● 协助财务部门进行企业成本管理工作，进行成本预测、控制、核算、分析等工作；</p>
									<p>● 及时做好会计凭证、账册、报表等财会资料的收集、汇编、归档等会计档案管理工作；</p>
									<p>● 完成财务主管安排的其他工作。</p>
									<p>
										<b style="color: #5d6876;">R：</b>学习和了解了公司的企业文化和制度流程等，锻炼了自己的独立分析解决问题能力和逻辑思维能力及数据分析能力，增强了团队沟通协作能力和服务意识及工作执行力，积累了实习工作经验。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法3</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2017.04-2017.06<br>福建广播电视台新媒体部<br>实习新媒体运营
										</b>
									</p>
									<p>
										<b style="color: #5d6876;">职责：</b>
									</p>
									<p>1.
										自媒体运营负责移动互联网自媒体平台（微信、微博、手机终端为主）的日常运营及推广工作；负责能够独立运营微信公众号，为粉丝策划与提供优质、有高度传播性的内容；
									</p>
									<p>2.
										文案撰写：负责策划并执行微信营销线日常活动及跟踪维护，根据项目撰写高质量、具有吸引力及广泛传播性的应用型文章。</p>
									<p>3. 市场活动策划：协助市场经理策划市场宣传活动，与媒体沟通宣传的要素，进行品牌的宣传，增强品牌影响力。</p>
									<p>
										<b style="color: #5d6876;">业绩 ：</b>
									</p>
									<p>1. 撰写软文发布量达***篇，单篇文章流量平均超过****pv，其中****等
										，更是突破3000uv。专题*****制作数量过百，每月推出一期，平均流量过万。</p>
									<p>2. 所负责相关产品微信公众号粉丝数****人，平均文章阅读数1000+，微博粉丝数****人。</p>
								</div>
							</div>
						</li>
						<!--项目经验-->
						<li data-list-id="resume_project">
							<div class="list show">
								<div class="title">
									<span>◆ 项目经验</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项，根据实际情况选择</p>
									<p>
										<b style="color: #5d6876;">可填信息：</b>
									</p>
									<p>项目名称、项目时间、担任角色、项目描述、业绩成果</p>
									<p>
										<b style="color: #5d6876;">注意：</b>
									</p>
									<p>1.内容清晰，结果导向；</p>
									<p>2.与目标申请岗位相结合，升华内容；</p>
									<p>3.IT项目可包含运行的软硬件环境、开发工具及目标系统等；</p>
									<p>4.可参考STAR法则来写：</p>
									<p>Situation：在什么样的背景下？</p>
									<p>Task：面临什么样的目标任务？</p>
									<p>Action：针对当时的情况，采用了什么方法？</p>
									<p>Result：结果怎样，学习到了什么？</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 用数据说话</span><i></i>
								</div>
								<div class="text">
									<p>如：</p>
									<p>带领团队/作为核心人员 通过XX 提升X%/节省XX环节XX时间/将销售额提高X%；</p>
									<p>通过XX数据分析公司XX问题，提出XX解决方案成功将XX从X提升至X；</p>
									<p>带领X名队员/在XX的情况下/迅速找到XX解决方案；</p>
									<p>比去年同期提高X%/较同期入职人员高出#倍/比以前团队效率高出X%。</p>
									<p>
										<b style="color: #5d6876;">注意：</b>无法用数据表达的成绩说服力较弱，如“获得领导嘉奖/表扬”之类的成绩尽量不要写。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 如果不方便透露客户名或项目细节怎么办？</span><i></i>
								</div>
								<div class="text">
									<p>
										如果所在行业有严格保密规定（通常投行、咨询、四大等乙方机构都有保护客户隐私的严格规定）可以在简历上大致描述该公司所处行业+项目规模，
										如“某保险行业领军企业XX元债券发行”、“某新能源行业集团省级单位系统整体升级”、“某外资整车厂年审项目”等。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法1</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2017.02-2017.03<br>福建汽车HD10平台ACC、LKA、AEB
											展示<br>核心人员
										</b>
									</p>
									<p>
										<b style="color: #5d6876;">项目描述：</b>此项目为在福建大学车辆测试场的一个展示项目，主要展示L2级别的自动驾驶功能整合，可以视为自适应巡航（ACC）、车道保持控制（LKA）和自动紧急制动（AEB）功能的组合。
									</p>
									<p>
										<b style="color: #5d6876;">项目实施：</b>项目采用的平台为陕汽HD10平台牵引式卡车，ACC
										和AEB部分传感器为毫米波雷达，LKA 感知部分由公司算法部门承担，单目摄像头+单卡车载电脑完成车道线识别。ACC
										算法使用距离误差和速度误差加权得到期望速度，CC中采用二段PID控制器实现加速部分控制，制动与加速之间加入人工deadband以消除期望速度在零附近时的突然制动或加速。LKA
										算法采用pure pursuit前馈+横摆角速度误差反馈控制器。
									</p>
									<p>
										<b style="color: #5d6876;">项目成果：</b>整个部分均在车载原型机AD5454上编程完成。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法2</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2014.08-2014.12<br>课程注册系统<br>负责人
										</b>
									</p>
									<p>
										<b style="color: #5d6876;">项目描述：</b>此项目采用MVC设计模式，MySql数据库，
										PHP，HTML，CSS的技术上制作的一个动态课程注册系统。
									</p>
									<p>
										<b style="color: #5d6876;">项目职责：</b>担任研发工程师，参与需求调研，项目可行性分析，技术可行性分析和需求分析
										，编写出实现各项功能的完整代码 ，参与软件开发和重大问题解决 ，负责产品的测试与bug跟踪。
									</p>
									<p>
										<b style="color: #5d6876;">项目业绩：</b>实现学生可以通过网站查询并注册现有课程，并可移除已选课程或添加新课程的功能。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 错误示范</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2016.09-2016.09<br>电影购票系统
										</b>
									</p>
									<p>
										使用myeclipse进行编程，同时连接数据库mysql进行数据存储，修改及更新。当时市面上可供参考的文档很少，bug较多，经过不断完善，可以满足系统的日常使用，包括电影院、电影、放映表的增删改查和订单表的查询与删除等功能。之后xx出现且效果不错，便仿照它制作了相应的功能。
									</p>
									<p>
										<b style="color: #5d6876;">注意：</b>内容描述没有条理，难以抓住重点，未能说清自己在项目中的角色及项目，仅客观陈述对应聘毫无帮助。
									</p>
								</div>
							</div>
						</li>
						<!--志愿者经历-->
						<li data-list-id="resume_volunteer">
							<div class="list show">
								<div class="title">
									<span>◆ 志愿者经验</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项，根据实际情况选择</p>
									<p>
										如果你的工作经验略显单薄，那么志愿者经验则能够帮助你在有限的条件下丰富你的简历，使你距离名企更进一步。志愿者经验不能仅是陈述过程，更重要的是要提炼出自己从中得到了什么成长，为被服务人群做了哪些贡献，体现出你是一个富有爱心，关怀社会，影响社会的人。
									</p>
									<p>
										现在许多高校会规定学生要至少做40-50小时的社区服务才可以毕业，有些学校甚至要求100+小时的community
										service，对这些学校的同学来说，志愿者经验的比重及价值也相对更高，尤其对于要申请国外大学的同学，这部分内容一定要认真对待。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 什么样的志愿者活动才是出色的志愿者活动呢？</span><i></i>
								</div>
								<div class="text">
									<p>
										有的人认为，去不发达地区或不发达国家做支教或其他公益活动比在附近街区进行的支教或志愿活动要好，但其实这种看法是片面的。去那些更远更偏僻的地方虽然听起来更高大上，但和你在附近街区里做的事情都是差不多的。
									</p>
									<p>出色的志愿者活动，是那些你坚持了很长时间，并且你的服务对所服务对象产生了一定影响力的，是有实际意义的志愿活动。
									</p>
									<p>
										<b style="color: #5d6876;">注意：用数据说话。</b>
									</p>
									<p>用数字罗列你志愿者的工作，让HR可以量化你的工作和能力。</p>
									<p>如，整理了多少本图书；</p>
									<p>做了多少字的整理报告；</p>
									<p>连续一年每个周末都会前往XX社区养老院看望X位孤寡老人，为老人们做过……；</p>
									<p>
										每个暑假都会前去XX学校做支教老师，由于当地教育资源比较匮乏，在支教期间坚持帮助学生练习英语口语，回学校后发起募捐，筹得X元，帮助XX学校学生获得了更好的教育资源。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法</span><i></i>
								</div>
								<div class="text">
									<p>
										<b style="color: #5d6876;">2016.07-2016.09<br>福建关爱孤儿志愿者活动<br>活动运营策划助理
										</b>
									</p>
									<p>项目描述：这是一场和七色花孤儿早期干预项目的家庭一起进行的公益活动，也是一次亲子同理心教育工作坊。</p>
									<p>
										职责描述：参与活动整体策划及运营，与10个家庭进行持续3周的前期沟通；负责现场6家媒体的人员接待工作；活动后整理了X字的总结汇报。
									</p>
								</div>
							</div>
						</li>
						<!--奖项荣誉-->
						<li data-list-id="resume_honor">
							<div class="list show">
								<div class="title">
									<span>◆ 荣誉奖项</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项，根据实际情况选择</p>
									<p>
										<b style="color: #5d6876;">可填信息：</b>
									</p>
									<p>荣誉证书、竞赛获奖证书、奖学金等</p>
									<p>
										<b style="color: #5d6876;">注意：</b>
									</p>
									<p>时间倒叙，与目标岗位相关性强的写在前面</p>
									<p>可以用数据来体现奖项的含金量</p>
									<p>只写有代表性的奖项即可，同年或同类别的奖项可进行适当合并</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法</span><i></i>
								</div>
								<div class="text">
									<p>2015-2016 获第七届大广赛全国平面一等奖、福建大学“创业策划大赛”三等奖</p>
									<p>2014-2015 获特等专业奖学金（3/80）</p>
									<p>2013-2015 获国家励志奖学金3次</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 错误示范</span><i></i>
								</div>
								<div class="text">
									<p>2015.04 获三好学生称号</p>
									<p>2016.04 获三好学生称号</p>
									<p>2015.11 获优秀学生干部称号</p>
									<p>2015.12 获文明寝室称号</p>
									<p>2016.10 获班级XX摄影比赛三等奖</p>
									<p>
										<b style="color: #5d6876;">注意：</b>荣誉奖项倒叙书写，避免简单堆砌，与目标岗位相关性不强或含金量不高的奖项可不写（如班级摄影奖、文明寝室称号等）
									</p>
								</div>
							</div>
						</li>
						<!--技能特长-->
						<li data-list-id="resume_skill">
							<div class="list show">
								<div class="title">
									<span>◆ 技能特长</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项，根据实际情况选择</p>
									<p>
										<b style="color: #5d6876;">可填信息：</b>
									</p>
									<p>行业中需要的技能和各类证书，如</p>
									<p>英语技能：CET，托福，雅思，口译证书，专八等行业相关证书等；</p>
									<p>专业技能：计算机等级考试证书，JAVA，C++，j2ee，mysql，maven，git，ant等；</p>
									<p>个人素质方面的软实力，如：演讲与口才，组织与协调，客户接待，商务谈判等。</p>
									<p>
										<b style="color: #5d6876;">注意：</b>
									</p>
									<p>如果目标岗位的招聘信息对技能证书有要求，一定要写。</p>
								</div>
							</div>
						</li>
						<!--兴趣爱好-->
						<li data-list-id="resume_hobby">
							<div class="list show">
								<div class="title">
									<span>◆ 兴趣爱好</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项，根据实际情况选择</p>
									<p>有特点、能够体现自身性格及能力与目标岗位相符的兴趣爱好可以写。</p>
								</div>
							</div>
						</li>
						<!--作品展示-->
						<li data-list-id="resume_portfolio">
							<div class="list show">
								<div class="title">
									<span>◆ 作品展示</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项，根据实际情况选择</p>
									<p>设计师或技术类人员建议添加个人主页，更好的展示自己。</p>
									<p>如：</p>
									<p>
										技术博客：<a href="https://pages.github.com/" target="_blank">https://pages.github.com/</a>
									</p>
									<p>
										Github：<a href="https://github.com/geek" target="_blank">https://github.com/geek</a>
									</p>
									<p>
										<a href="http://www.zcool.com.cn/" target="_blank">站酷</a>、<a
											href="http://www.ui.cn/" target="_blank">UI中国</a>、<a
											href="http://huaban.com/" target="_blank">花瓣</a>等
									</p>
									<p>PS.不要放非本人做的作品，如你只是个打杂的，结果把整个项目都放上去了…还是真诚求职比较好</p>
									<p>
										如果你还在探索职业不知道自己想做什么，那么作品集展现广度是很好的选择。但如果你已经确定了求职方向，那么作品集的内容一定要专业专业再专业，不相关的作品可以忽略不展示。
									</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 作品集中可添加案例研究</span><i></i>
								</div>
								<div class="text">
									<p>
										在作品集中加入案例研究，因为单纯视觉效果很棒的作品并不能告诉面试官你能否解决问题。应该谈谈你的设计过程——尝试过什么解决方案，如何尝试的，弃用的方案及原因是什么？
									</p>
									<p>展示你解决问题的能力就能显示出你值得被雇佣的价值。</p>
								</div>
							</div>
						</li>
						<!--自我评价-->
						<li data-list-id="resume_summary">
							<div class="list show">
								<div class="title">
									<span>◆ 自我评价</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项，根据实际情况选择</p>
									<p>篇幅不要太长，注意结合简历整体的美观度，如果真的有很多话要说，建议以求职信的形式附上。</p>
									<p>
										（求职信是求职者向目标用人单位或单位领导人介绍自己的实际才能、表达自己就业愿望的一种书信，是简历之外的加分项，通常与简历一起投递。）
									</p>
									<p>
										<b style="color: #5d6876;">注意：</b>
									</p>
									<p>自我评价应做到突出自身符合目标岗位要求的“卖点”；</p>
									<p>避免过多使用形容词，而应该通过数据及实例来对自身价值进行深化。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法1</span><i></i>
								</div>
								<div class="text">
									<p>首先，解释一下自己为什么要来应聘这个职位，表示自己的强烈意愿；</p>
									<p>然后，阐明一下你能为这家企业创造哪些价值；</p>
									<p>最后，总结一下自己在过往工作中做了什么，用数据简略地展示自己的成绩，强调自己的工作能力。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法2</span><i></i>
								</div>
								<div class="text">
									<p>● 七年以上网络运维工作及管理经验，项目实操经验丰富，在运维管理和推动方面极具优势；</p>
									<p>● 精通计算机网络建设与开发，熟练网络安全技术、路由器、交换机等配置；</p>
									<p>● 熟悉主流应用系统的管理、运维、故障处理、容错、备份，负载均衡等技术；</p>
									<p>● 对网络安全体系有深入理解，有网络安全事件的紧急处置经验和能力，对国家企业信息化建设有较深认识；</p>
									<p>● 思想独立，独立解决问题能力强，能快速适应新的工作学习和生活环境，个人学习能力强；</p>
									<p>● 性格开朗，善于沟通，有较强的组织及协调能力，具有很强的抗压能力，工作中可以独挡一面。</p>
								</div>
							</div>
							<div class="list">
								<div class="title">
									<span>◆ 推荐写法3</span><i></i>
								</div>
								<div class="text">
									<p>●
										在校有两年独立项目实战经验，培养了较强的独立分析及解决问题的能力，养成了良好而规范的编程习惯，在团队协作中建立起了良好的团队沟通协作能力及服务意识，逻辑思维缜密，执行力及抗压能力强。
									</p>
									<p>●
										在GITHUB有一个高STAR的开源项目。熟悉web开发，熟炼使用springmvc、hessian、redis、RocketMq中间件等，熟悉jvm、多线程、rpc等，熟练使用maven、git，熟悉并能熟练使用Linux操作系统，熟练使用jQuery框架，曾经开发过jQuery插件，了解XX行业的相关知识。
									</p>
									<p>● 我乐观开朗，踏实努力，
										善于有效沟通与团队合作，能够合理规划时间与协作分工，必要时能够发挥领导和决策，能够同时注重细节并顾及整体，具有应对解决随机问题的能力，是被公认的高效率可信赖的伙伴。
									</p>
									<p>●
										我十分认同贵公司学习可以改变命运的历练，正是不断的学习才能使我在自己所热爱的的职业上的专业能力能够不断提升，使自己能够持续前进，如果能够加入贵公司，对我来说将是另一段学习的开始，希望能和公司一起成长。
									</p>
								</div>
							</div>
						</li>
						<!--封面-->
						<li data-list-id="resume_cover">
							<div class="list show">
								<div class="title">
									<span>◆ 封面</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项</p>
									<p>简历封面应突出本人的基本信息尤其是联系方式。</p>
									<p>作为外在形式，简历封面一定程度上可以折射出求职者的素养与喜好，建议设计类人员选择使用或自行设计。</p>
								</div>
							</div>
						</li>
						<!--自荐信-->
						<li data-list-id="resume_letter">
							<div class="list show">
								<div class="title">
									<span>◆ 自荐信</span><i></i>
								</div>
								<div class="text">
									<p>此项为非必选项</p>
									<p>
										自荐信是求职者向目标用人单位或单位领导人介绍自己的实际才能、表达自己就业愿望的一种书信，是简历之外的加分项，通常与简历一起投递。是申请人通过阐述申请动机、描述相关经历来说服HR提供面试机会的途径。
									</p>
									<p>自荐信(cover letter)在面对外企求职时显得尤为重要，长度通常在200-400字左右。</p>
									<p>结合目标岗位的招聘信息，用言简意赅的语句阐述清楚以下内容即可：</p>
									<p>1.感兴趣的目标岗位</p>
									<p>2.相关工作经历及相关能力</p>
									<p>3.为什么申请该职位</p>
									<p>4.为什么申请该公司</p>
								</div>
							</div>
						</li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade defaultmodal" id="change_parts_style"
		aria-hidden="false">
		<div class="modal-dialog">
			<div class="modal-content change_parts_style">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true"></button>
					<span class="modal-title">更换样式</span>
				</div>
				<div class="modal-body">
					<div class="parts_style_list">
						<img src="" alt=""> <a href="javascript:;">更换</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

<script type="text/javascript">
	$(function() {
		var _resume_content_id = common.main
				.getUrlParamString("resumeContentId");
		if (!common.main.is_empty(_resume_content_id)) {
			var edit_url = "/cvresume/edit/?resumeId=" + cvresume.info.resumeid
					+ "&itemid=" + cvresume.info.itemid;
			history.replaceState(null, null, edit_url)
		}
		//生成手机推荐信二维码
		var visit_url = "http://www.500d.me/mobile/recommend/send//";
		$("#preview_qrcode_image").html("");//清楚生成的二维码
		$("#preview_qrcode_image").qrcode({
			width : 200, //宽度 
			height : 200, //高度 
			text : visit_url
		//任意内容 
		});
	});
</script>

</html>
