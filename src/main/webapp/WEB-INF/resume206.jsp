<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/web/cvresume/css/jm0203.css" />

</head>
<body>
	<input type="hidden" id="resume_content" name="resume_content"
		value="<c:out value="${resume_content}"/>">
	<div class="mobile-head"></div>
	<div class="wbdCv-baseStyle" id="resume_base" data_color="j2"
		data_font_name="yahei" data_font_size="14" data_line_height="1.5"
		data_font_type="0" resume_sort='' wap_resume_sort=''
		template_set='{"left":[{"key":"resume_head","isShow":true},{"key":"base_info","isShow":true},{"key":"base_home","isShow":true},{"key":"base_social","isShow":true},{"key":"resume_skill","isShow":true},{"key":"resume_hobby","isShow":true}],"top":[],"right":[{"key":"resume_name","isShow":true},{"key":"resume_job_preference","isShow":true},{"key":"resume_edu","isShow":true},{"key":"resume_work","isShow":true},{"key":"resume_internship","isShow":false},{"key":"resume_volunteer","isShow":false},{"key":"resume_project","isShow":false},{"key":"resume_honor","isShow":false},{"key":"resume_summary","isShow":true},{"key":"resume_portfolio","isShow":false},{"key":"resume_recoment","isShow":false},{"key":"resume_qrcode","isShow":false}],"bottom":[]}'
		data_itemid="206" data-modal_margin="1">
		<!--封面模块-->
		<div class="wbdCv-cover hidden" id="resume_cover">
			<div class="coverItem  moduleItem">
				<dl>
					<dt>
						<div contenteditable="false" data-textLang="cover">封面</div>
					</dt>
					<dd>
						<div class="cover-con">
							<div class="cover-list cover-name moduleItemList">
								<a class="wbdfont  divIconFont">&#xe69d;</a>
								<div contenteditable="true" data-placeholder="你的姓名"></div>
							</div>
							<div class="cover-list cover-phone moduleItemList">
								<a class="wbdfont divIconFont">&#xe69d;</a>
								<div contenteditable="true" data-placeholder="电话号码"></div>
							</div>
							<div class="cover-list cover-email moduleItemList">
								<a class="wbdfont divIconFont">&#xe69d;</a>
								<div contenteditable="true" data-placeholder="电子邮箱"></div>
							</div>
						</div>
					</dd>
				</dl>
			</div>
		</div>
		<!--自荐书模块-->
		<div class="wbdCv-letter hidden" id="resume_letter">
			<div class="letterItem moduleItem">
				<dl>
					<dt>
						<div contenteditable="false" data-textLang="letter">自荐信</div>
					</dt>
					<dd>
						<div contenteditable="true" data-placeholder="在这里添加描述..."></div>
					</dd>
				</dl>
			</div>
		</div>
		<div class="wbdCv-resume clearfix">
			<div class="wbdCv-baseTop"></div>
			<div class="wbdCv-baseLeft" id="foo">
				<!--头像模块-->
				<div class="headItem moduleItem resume_sort template_css "
					data-size="rectangle" id="resume_head">
					<dl>
						<dt class="clearfix">
							<a class="wbdfont divIconFont" for-key="resume_head">&#xe880;</a>
							<span><div class="item-title module_item_title"
									contenteditable="false" data-placeholder="头像"
									data-textLang="head">头像</div></span>
						</dt>
						<dd class="clearfix">
							<!--头像尺寸设置弹框-->
							<div class="head_size_edit 500dtongji"
								data_track="PC-CV6.5.0-在线制作-文档编辑页-简历编辑区-简历头像-设置按钮"></div>
							<div class="head_size_selector">
								<span class="head_size_title">头像风格</span> <span
									class="head_size_option 500dtongji"
									data_track="PC-CV6.5.0-在线制作-文档编辑页-简历编辑区-简历头像-头像风格1"
									data-size="round"></span> <span
									class="head_size_option 500dtongji"
									data_track="PC-CV6.5.0-在线制作-文档编辑页-简历编辑区-简历头像-头像风格2"
									data-size="square"></span> <span
									class="head_size_option 500dtongji"
									data_track="PC-CV6.5.0-在线制作-文档编辑页-简历编辑区-简历头像-头像风格3"
									data-size="rectangle"></span>
							</div>
							<div class="head-con">
								<a class="img-preview-hover 500dtongji"
									data_track="PC-在线制作-文档编辑页-中间简历编辑-头像-上传照片"> </a>
								<div class="img-preview">
									<img src="resources/web/cvresume/images/1.jpg" />
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--基本信息模块-->
				<div class="infoItem bInfoItem moduleItem resume_sort template_css"
					id="base_info">
					<dl>
						<dt class="clearfix">
							<a class="wbdfont divIconFont" for-key="base_info">&#xe855;</a> <span><div
									class="resume_lang module_item_title" for-key="info_title"
									contenteditable="false" data-placeholder="基本信息"
									data-placeLang="baseMsg" data-textLang="baseMsg">基本信息</div></span>
						</dt>
						<dd class="clearfix">
							<div class="info-con">
								<!-- 渲染时 从工作年限开始没有内容的 div 添加 hidden 类  身高 & 体重 要加小写单位 -->
								<div class="info-sex info-list moduleItemList hidden" id="sex">
									<a class="wbdfont divIconFont" for-key="sex">&#xf074;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"></span>
								</div>
								<div class="info-age info-list moduleItemList " id="birth">
									<a class="wbdfont divIconFont" for-key="birth">&#xe70a;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"
										data-placeLang="age" data-value="" data-placeholder="生日"></span>
								</div>
								<div class="info-nation info-list moduleItemList hidden"
									id="nation">
									<a class="wbdfont divIconFont" for-key="nation">&#xe67b;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"></span>
								</div>
								<div class="info-highedu info-list moduleItemList hidden"
									id="education">
									<a class="wbdfont divIconFont" for-key="education">&#xe861;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"
										data-value=""></span>
								</div>
								<div class="info-marital info-list moduleItemList hidden"
									id="marriageStatus">
									<a class="wbdfont divIconFont" for-key="marriageStatus">&#xe816;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"
										data-value=""></span>
								</div>
								<div class="info-height info-list moduleItemList hidden"
									id="height">
									<a class="wbdfont divIconFont" for-key="height">&#xf081;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"
										data-value="">cm</span>
								</div>
								<div class="info-status info-list moduleItemList hidden"
									id="politicalStatus">
									<a class="wbdfont divIconFont" for-key="politicalStatus">&#xe902;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"
										data-value=""></span>
								</div>
								<div class="info-city info-list moduleItemList " id="city">
									<a class="wbdfont divIconFont" for-key="city">&#xe622;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"
										data-placeLang="city" data-value="" data-placeholder="所在城市"></span>
								</div>
								<div class="info-work info-list moduleItemList hidden"
									id="jobYear">
									<a class="wbdfont divIconFont" for-key="jobYear">&#xe81b;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"
										data-value=""></span>
								</div>
								<div class="info-phone info-list moduleItemList " id="mobile">
									<a class="wbdfont divIconFont" for-key="mobile">&#xf241;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"
										data-placeLang="phone" data-placeholder="联系电话"></span>
								</div>
								<div class="info-email info-list moduleItemList " id="email">
									<a class="wbdfont divIconFont" for-key="email">&#xf148;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"
										data-placeLang="email" data-placeholder="电子邮箱"></span>
								</div>
								<div class="info-weight info-list moduleItemList hidden"
									id="weight">
									<a class="wbdfont divIconFont" for-key="weight">&#xf158;</a><span
										class="500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（其他）-点击模块编辑"
										data-value="">kg</span>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--个人主页模块-->
				<div
					class="homeItem bInfoItem moduleItem resume_sort template_css hidden"
					data-parts="template_css" id="base_home">
					<dl>
						<dt class="clearfix">
							<a class="wbdfont divIconFont" for-key="base_home">&#xf192;</a> <span><div
									class="resume_lang module_item_title" for-key="base_home"
									contenteditable="false" data-placeholder="个人主页"
									data-placeLang="homePage" data-textLang="homePage">个人主页</div></span>
						</dt>
						<dd class="clearfix">
							<div class="home-con"></div>
						</dd>
					</dl>
				</div>
				<!--社交账号模块-->
				<div
					class="socialItem bInfoItem moduleItem resume_sort template_css hidden"
					id="base_social">
					<dl>
						<dt class="clearfix">
							<a class="wbdfont divIconFont" for-key="base_social">&#xe64b;</a>
							<span><div class="resume_lang module_item_title"
									for-key="base_social" contenteditable="false"
									data-placeholder="社交账号" data-placeLang="social"
									data-textLang="social">社交账号</div></span>
						</dt>
						<dd class="clearfix">
							<div class="social-con">
								<div class="social-wx social-list moduleItemList hidden">
									<a class="hvr-buzz" href="javascript:;" data-title="微信"></a><span>微信</span>
								</div>
								<div class="social-qq social-list moduleItemList hidden">
									<a class="hvr-buzz" href="javascript:;" data-title="QQ"></a><span>QQ</span>
								</div>
								<div class="social-zh social-list moduleItemList hidden">
									<a class="hvr-buzz" href="#" title="知乎"></a><span>知乎</span>
								</div>
								<div class="social-wb social-list moduleItemList hidden">
									<a class="hvr-buzz" href="#" title="微博"></a><span>微博</span>
								</div>
								<div class="social-dd social-list moduleItemList hidden">
									<a class="hvr-buzz" href="javascript:;" data-title="钉钉号"></a><span>钉钉号</span>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--技能特长模块-->
				<div class="skillItem baseItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_skill">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_skill">&#xe70d;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_skill" contenteditable="false"
									data-placeholder="技能特长" data-placeLang="social"
									data-textLang="social">技能特长</div></span>
						</dt>
						<dd class="clearfix">
							<div class="skill-con">
								<div class="baseItem-null" style="display: block;">
									<div class="baseItem-nullcon 500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-技能特长-添加我的技能特长">
										<i>+</i><span data-textLang="addSkills">添加我的技能特长</span>
									</div>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--兴趣爱好模块-->
				<div class="hobbyItem baseItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_hobby">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_hobby">&#xe930;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_hobby" contenteditable="false"
									data-placeholder="兴趣爱好" data-placeLang="hobby"
									data-textLang="hobby">兴趣爱好</div></span>
						</dt>
						<dd class="clearfix">
							<div class="hobby-con">
								<div class="baseItem-null" style="display: block;">
									<div class="baseItem-nullcon 500dtongji"
										data_track="PC-在线制作-文档编辑页-中间简历编辑-兴趣爱好-添加我的兴趣爱好">
										<i>+</i><span data-textLang="addHobby">添加我的兴趣爱好</span>
									</div>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--添加自定义模块-->
				<div class="baseItem-null addCustomItem">
					<div class="baseItem-nullcon 500dtongji"
						data_track="PC-在线制作-文档编辑页-中间简历编辑-自定义模块-添加自定义模块">
						<i>+</i><span data-textLang="custom">添加自定义模块</span>
					</div>
				</div>
			</div>
			<div class="wbdCv-baseRight" id="bar">
				<!--姓名一句话模块-->
				<div class="nameItem bInfoItem moduleItem resume_sort template_css"
					id="resume_name">
					<dl>
						<dt class="clearfix">
							<a class="wbdfont divIconFont" for-key="resume_name">&#xe8af;</a>
							<span><div class="item-title module_item_title"
									contenteditable="false" data-placeholder="姓名">姓名</div></span>
						</dt>
						<dd class="clearfix">
							<div class="name-con">
								<div class="name resume_lang 500dtongji"
									data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（名字）-点击模块编辑"
									for-key="name" contenteditable="false" data-placeholder="你的名字"
									data-placeLang="name"></div>
								<div class="500dtongji resume_tag hidden"
									data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（名字）-点击模块编辑"></div>
								<div class="word resume_lang 500dtongji"
									data_track="PC-在线制作-文档编辑页-中间简历编辑-基本信息（名字）-点击模块编辑"
									for-key="word" contenteditable="false"
									data-placeholder="一句话介绍自己，告诉HR为什么选择你而不是别人"
									data-placeLang="word"></div>
							</div>
						</dd>
					</dl>
				</div>
				<!--求职意向模块-->
				<div class="inteItem baseItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_job_preference">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_job_preference">&#xe71b;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_job_preference" contenteditable="false"
									data-placeholder="求职意向" data-placeLang="job"
									data-textLang="job">求职意向</div></span>
						</dt>
						<dd class="clearfix">
							<div class="inte-con">
								<div data_track="PC-在线制作-文档编辑页-中间简历编辑-求职意向-点击模块编辑"
									class="500dtongji inte-job inte-list moduleItemList "
									id="jobFunction">
									<a class="wbdfont divIconFont" for-key="jobFunction">&#xe973;</a><span
										data-placeholder="意向岗位" data-placeLang="jobFun"></span><a
										href="javascript:;" class="delete"></a>
								</div>
								<div data_track="PC-在线制作-文档编辑页-中间简历编辑-求职意向-点击模块编辑"
									class="500dtongji inte-type inte-list moduleItemList "
									id="jobType">
									<a class="wbdfont divIconFont" for-key="jobType">&#xe96e;</a><span
										data-value="" data-placeholder="职业类型" data-placeLang="jobType"></span><a
										href="javascript:;" class="delete"></a>
								</div>
								<div data_track="PC-在线制作-文档编辑页-中间简历编辑-求职意向-点击模块编辑"
									class="500dtongji inte-city inte-list moduleItemList "
									id="jobCity">
									<a class="wbdfont divIconFont" for-key="jobCity">&#xe96a;</a><span
										data-placeholder="意向城市" data-value="" data-placeLang="jobCity"></span><a
										href="javascript:;" class="delete"></a>
								</div>
								<div data_track="PC-在线制作-文档编辑页-中间简历编辑-求职意向-点击模块编辑"
									class="500dtongji inte-price inte-list moduleItemList "
									id="jobSalary">
									<a class="wbdfont divIconFont" for-key="jobSalary">&#xe97d;</a><span
										data-placeholder="薪资要求" data-placeLang="jobSalary"></span><a
										href="javascript:;" class="delete"></a>
								</div>
								<div data_track="PC-在线制作-文档编辑页-中间简历编辑-求职意向-点击模块编辑"
									class="500dtongji inte-time inte-list moduleItemList "
									id="jobTime">
									<a class="wbdfont divIconFont" for-key="jobTime">&#xe805;</a><span
										data-value="" data-placeholder="入职时间" data-placeLang="jobTime"></span><a
										href="javascript:;" class="delete"></a>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--教育背景模块-->
				<div
					class="eduItem baseItem timeItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_edu">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_edu">&#xf258;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_edu" contenteditable="false"
									data-placeholder="教育背景" data-placeLang="edu"
									data-textLang="edu">教育背景</div></span>
						</dt>
						<dd class="clearfix">
							<div class="dd-content moduleItemList">
								<div class="dd-title clearfix">
									<span class="time"><div contenteditable="false"
											data-placeholder="设置时间..." data-placeLang="time"></div></span> <span
										class="company"><div contenteditable="true"
											data-placeholder="填写学校名称..." data-placeLang="school"></div></span> <span
										class="post"><div contenteditable="true"
											data-placeholder="填写专业名称..." data-placeLang="major"></div></span>
								</div>
								<div class="dd-text clearfix">
									<div class="resume_lang resume_content" contenteditable="true"
										for-key="exper_content"
										data-placeholder="在这里详细描述你在校期间所学的专业，主要包括课程内容，校内任职，校内荣誉等内容..."
										data-placeLang="description"></div>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--工作经历模块-->
				<div
					class="experItem baseItem timeItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_work">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_work">&#xe7bb;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_work" contenteditable="false"
									data-placeholder="工作经验" data-placeLang="exper"
									data-textLang="exper">工作经验</div></span>
						</dt>
						<dd class="clearfix">
							<div class="dd-content moduleItemList">
								<div class="dd-title clearfix">
									<span class="time"><div contenteditable="false"
											data-placeholder="设置时间..." data-placeLang="time"></div></span> <span
										class="company"><div contenteditable="true"
											data-placeholder="填写公司名称..." data-placeLang="organization"></div></span>
									<span class="post"><div contenteditable="true"
											data-placeholder="填写职位名称..." data-placeLang="JobTitle"></div></span>
								</div>
								<div class="dd-text clearfix">
									<div class="resume_lang resume_content" contenteditable="true"
										for-key="exper_content"
										data-placeholder="在这里详细描述你的职责范围、工作任务以及取得的成绩等..."
										data-placeLang="description"></div>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--实习经历模块-->
				<div
					class="intexperItem baseItem timeItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_internship">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_internship">&#xf078;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_internship" contenteditable="false"
									data-placeholder="实习经历" data-placeLang="intexper"
									data-textLang="intexper">实习经验</div></span>
						</dt>
						<dd class="clearfix">
							<div class="dd-content moduleItemList">
								<div class="dd-title clearfix">
									<span class="time"><div contenteditable="false"
											data-placeholder="设置时间..." data-placeLang="time"></div></span> <span
										class="company"><div contenteditable="true"
											data-placeholder="填写公司名称..." data-placeLang="organization"></div></span>
									<span class="post"><div contenteditable="true"
											data-placeholder="填写职位名称..." data-placeLang="JobTitle"></div></span>
								</div>
								<div class="dd-text clearfix">
									<div class="resume_lang resume_content" contenteditable="true"
										for-key="exper_content" data-placeholder="在这里添加实习描述..."
										data-placeLang="description"></div>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--志愿者经历模块-->
				<div
					class="volexperItem baseItem timeItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_volunteer">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_volunteer">&#xe79b;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_volunteer" contenteditable="false"
									data-placeholder="志愿者经历" data-placeLang="volexper"
									data-textLang="volexper">志愿者经历</div></span>
						</dt>
						<dd class="clearfix">
							<div class="dd-content moduleItemList">
								<div class="dd-title clearfix">
									<span class="time"><div contenteditable="false"
											data-placeholder="设置时间..." data-placeLang="time"></div></span> <span
										class="company"><div contenteditable="true"
											data-placeholder="填写单位信息..." data-placeLang="organization"></div></span>
									<span class="post"><div contenteditable="true"
											data-placeholder="填写角色名称..." data-placeLang="JobTitle"></div></span>
								</div>
								<div class="dd-text clearfix">
									<div class="resume_lang resume_content" contenteditable="true"
										for-key="exper_content" data-placeholder="在这里添加描述..."
										data-placeLang="description"></div>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--项目经验模块-->
				<div
					class="proexperItem baseItem timeItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_project">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_project">&#xe806;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_project" contenteditable="false"
									data-placeholder="项目经验" data-placeLang="proexper"
									data-textLang="proexper">项目经验</div></span>
						</dt>
						<dd class="clearfix">
							<div class="dd-content moduleItemList">
								<div class="dd-title clearfix">
									<span class="time"><div contenteditable="false"
											data-placeholder="设置时间..." data-placeLang="time"></div></span> <span
										class="company"><div contenteditable="true"
											data-placeholder="填写项目名称..." data-placeLang="organization"></div></span>
									<span class="post"><div contenteditable="true"
											data-placeholder="填写角色名称..." data-placeLang="JobTitle"></div></span>
								</div>
								<div class="dd-text clearfix">
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
					class="honorItem baseItem moduleItem descItem resume_sort template_css "
					data-parts="template_css" id="resume_honor">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_honor">&#xe6f6;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_honor" contenteditable="false"
									data-placeholder="荣誉奖项" data-placeLang="honor"
									data-textLang="honor">荣誉奖项</div></span>
						</dt>
						<dd class="clearfix">
							<div class="dd-content moduleItemList">
								<div class="dd-text clearfix">
									<div class="resume_lang resume_content" contenteditable="true"
										for-key="honor_content" data-placeholder="在这里详细描述你所获得的奖项荣誉..."
										data-placeLang="description"></div>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--自我评价模块-->
				<div
					class="evalItem baseItem moduleItem descItem resume_sort template_css "
					data-parts="template_css" id="resume_summary">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_summary">&#xe8ad;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_summary" contenteditable="false"
									data-placeholder="自我评价" data-placeLang="self"
									data-textLang="self">自我评价</div></span>
						</dt>
						<dd class="clearfix">
							<div class="dd-content moduleItemList">
								<div class="dd-text clearfix">
									<div class="resume_lang resume_content" contenteditable="true"
										for-key="summary_content"
										data-placeholder="在这里对你的履历进行简短的总结和评价..."
										data-placeLang="description"></div>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--作品展示模块-->
				<div class="workItem baseItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_portfolio">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_portfolio">&#xe929;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_portfolio" data-placeholder="作品展示"
									data-placeLang="portfolio" data-textLang="portfolio">作品展示</div></span>
						</dt>
						<dd class="clearfix">
							<div class="work-con">
								<div class="baseItem-null" style="display: block;">
									<div class="baseItem-nullcon">
										<i>+</i><span data-textLang="addPortfolio">添加我的作品</span>
									</div>
								</div>
								<div class="work-con-img clearfix"></div>
								<div class="work-con-link clearfix"></div>
							</div>
						</dd>
					</dl>
				</div>
				<!--推荐信模块-->
				<div
					class="recomentItem baseItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_recoment">
					<dl>
						<dt class="clearfix ">
							<a class="wbdfont divIconFont" for-key="resume_recoment">&#xe88d;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_recoment" data-placeholder="推荐信"
									data-placeLang="recoment" data-textLang="recoment">推荐信</div></span>
						</dt>
						<dd class="clearfix">
							<div class="recoment-con">
								<div class="baseItem-null" style="display: block;">
									<div class="baseItem-nullcon">
										<i>+</i><a target="_blank" data-textLang="requestRecomment">邀请别人为你写推荐信</a>
									</div>
								</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--手机二维码模块-->
				<div class="ewmItem baseItem moduleItem resume_sort template_css "
					data-parts="template_css" id="resume_qrcode">
					<dl>
						<dt class="clearfix">
							<a class="wbdfont divIconFont" for-key="resume_qrcode">&#xe8dd;</a>
							<span><div class="resume_lang module_item_title"
									for-key="resume_qrcode" data-placeholder="二维码"
									data-placeLang="code" data-textLang="code">二维码</div></span>
						</dt>
						<dd class="clearfix moduleItemList">
							<div class="ewm-con">
								<span><img class="qrImg"
									src="resources/web/images/ad_Attention_weixin_ewm.png"
									width="196" /></span>
								<div class="resume_content" contenteditable="true"
									data-placeholder="感谢您的阅读，扫一扫查看我的手机简历" data-placeLang="ewm"
									data-textLang="ewm">感谢您的阅读，扫一扫查看我的手机简历</div>
							</div>
						</dd>
					</dl>
				</div>
				<!--添加自定义模块-->
				<div class="baseItem-null addCustomItem">
					<div class="baseItem-nullcon 500dtongji"
						data_track="PC-在线制作-文档编辑页-中间简历编辑-自定义模块-添加自定义模块">
						<i>+</i><span data-textLang="custom">添加自定义模块</span>
					</div>
				</div>
			</div>
			<div class="wbdCv-baseBottom"></div>
		</div>
	</div>
	<script>
		//memberid应为数字
		if (typeof cvresume != "undefined") {
			var resumeid =
	<%=request.getParameter("resumeId")%>
		;
			if (!cvresume.main.is_empty(resumeid)) {

			} else {
				resumeid = 0;
			}
			cvresume.main.resume_draw(206, resumeid,
	<%=session.getAttribute("memberid")%>
		, '');
			cvresume.main.set_language("zh");
			cvresume.info.resumecontentid = 0;//内容简历模板id
			cvresume.main.template_set({
				"left" : [ {
					"key" : "resume_head",
					"isShow" : true
				}, {
					"key" : "base_info",
					"isShow" : true
				}, {
					"key" : "base_home",
					"isShow" : true
				}, {
					"key" : "base_social",
					"isShow" : true
				}, {
					"key" : "resume_skill",
					"isShow" : true
				}, {
					"key" : "resume_hobby",
					"isShow" : true
				} ],
				"top" : [],
				"right" : [ {
					"key" : "resume_name",
					"isShow" : true
				}, {
					"key" : "resume_job_preference",
					"isShow" : true
				}, {
					"key" : "resume_edu",
					"isShow" : true
				}, {
					"key" : "resume_work",
					"isShow" : true
				}, {
					"key" : "resume_internship",
					"isShow" : false
				}, {
					"key" : "resume_volunteer",
					"isShow" : false
				}, {
					"key" : "resume_project",
					"isShow" : false
				}, {
					"key" : "resume_honor",
					"isShow" : false
				}, {
					"key" : "resume_summary",
					"isShow" : true
				}, {
					"key" : "resume_portfolio",
					"isShow" : false
				}, {
					"key" : "resume_recoment",
					"isShow" : false
				}, {
					"key" : "resume_qrcode",
					"isShow" : false
				} ],
				"bottom" : []
			}, 0);
		}
		// 对应简历模板的个人标签、块距生效js代码（只应用在文档简历）
		var _mobans_v620 = [ "WM0008", "JM0289", "MR0031", "MR0029" ];
		if ($.inArray("JM0203", _mobans_v620) != -1) {//当前模板块距调节无意义
			//隐藏块距功能
			$("#setStyleModal").find(".fgsz-modalmargin").addClass("hidden");
		}
	</script>
	<div class="mobile-bottom"></div>
</body>
</html>