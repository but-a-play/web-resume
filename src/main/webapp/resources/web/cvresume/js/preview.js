/**
 * 在线简历简历数据操作
 * 
 * @author huangcanhui 文档提示 .moduleItem 标记模块 .moduleItemList 标记模块下的子栏目
 *         .divIconFont 标记自定义图标
 */
var cvresume = cvresume || {};
cvresume.main = cvresume.main || {};
cvresume.info = {
	itemid : 0,
	resumeid : 0,
	memberid : 0,
	downloadFlag : false,
	downloadUrl : "",
	resumecontentid : 0,
	visitid : "",
	sortPosition : [ "Left", "Top", "Right", "Bottom" ],
	cases : "",
	language : "zh",
	historyid : 0,
	resume_type : "文档"
}
cvresume.localStorage = true;// localStorge兼容，方便测试（默认true）
cvresume.save_trigger = true;
cvresume.resume_save_trigger = true;
cvresume.module_save_trigger = true;// 模块数据保存
cvresume.history_save_trigger = false;// 历史记录
cvresume.cur_opt_content = "";// 当前用户正在操作原始数据，使用获得焦点数据保存
cvresume.main = {
	template_set : function(settings, resumeid) {// 模板配置渲染
		if (settings) {
			var _classStr = "#resume_base .wbdCv-base";
			$(cvresume.info.sortPosition).each(
					function(i, item) {// 遍历方位
						var pos_set = settings[item.toLocaleLowerCase()];
						var $preModuleId;
						$(pos_set).each(
								function(j, jtem) {
									if (cvresume.main.is_empty(resumeid)) {
										// 隐藏
										if (!jtem.isShow) {
											$("#" + jtem.key)
													.addClass("hidden");
										}
									}
									// 移位
									if (cvresume.main.is_empty($preModuleId)) {
										$(_classStr + item).prepend(
												$("#" + jtem.key));
									} else {
										$($preModuleId)
												.after($("#" + jtem.key));
									}
									$preModuleId = $("#" + jtem.key);
									var _class = $preModuleId
											.attr("data-parts");
									if (_class != null && _class != "") {
										$preModuleId.removeClass(_class)
												.addClass("template_css").attr(
														"data-parts", "");
									}
								});
					});
		}
	},
	resume_draw : function(itemid, resumeid, memberid, visitid) {
		cvresume.info.itemid = itemid;
		cvresume.info.resumeid = resumeid;
		cvresume.info.memberid = memberid;
		cvresume.info.visitid = visitid;
	},
	set_language : function(language) {
		cvresume.info.language = language;
	},

	set_resume : function(resume_content) {// 设置简历内容数据
		var resume = JSON.parse(resume_content);
		cvresume.main.set_resume_title(resume);// 简历名称
		cvresume.main.set_resume_scale(resume);// 简历修改比例
		cvresume.main.set_resume_language(resume);// 中英文简历
		cvresume.main.set_resume_set(resume);// 简历设置信息，主题，字体，字体大小，字体间距，简繁体
		cvresume.main.set_resume_modul_mg(resume);// 模块管理信息
		cvresume.main.set_resume_icon_map(resume);// 图标管理
		cvresume.main.set_resume_cover_info(resume);// 封面信息
		cvresume.main.set_resume_letter(resume);// 自荐信
		cvresume.main.set_resume_head(resume);// 头像
		cvresume.main.set_resume_base_info(resume);// 基本信息
		cvresume.main.set_resume_job_preference(resume);// 求职意向
		cvresume.main.set_resume_skill(resume);// 技能特长
		cvresume.main.set_resume_hobby(resume);// 兴趣爱好
		cvresume.main.set_resume_time_module(resume, "#resume_edu");// 教育背景
		cvresume.main.set_resume_time_module(resume, "#resume_work");// 工作经历
		cvresume.main.set_resume_time_module(resume, "#resume_internship");// 实习经历
		cvresume.main.set_resume_time_module(resume, "#resume_volunteer");// 志愿者经历
		cvresume.main.set_resume_time_module(resume, "#resume_project");// 项目经历
		cvresume.main.set_resume_summary(resume);// 自我评价
		cvresume.main.set_resume_honor(resume);// 荣誉证书
		cvresume.main.set_resume_portfolio(resume);// 作品集
		cvresume.main.set_resume_custom(resume);// 自定项
		cvresume.main.set_resume_sort(resume);// 模块排序信息
		cvresume.main.set_resume_contact(resume);// 联系我样本保存
		cvresume.main.set_resume_qrcode(resume);// 手机二维码

	},

	set_resume_title : function(resume) {// 设置简历命名
		$(".set_resume_name").find("input").val(resume["resume_title"]);
		$("#resumeName").find("input").val(resume["resume_title"]);
	},

	set_resume_scale : function(resume) {// 设置简历修改比例
		$(".r-viewbar .number").attr("data-value", resume["resume_scale"]);
		$(".r-viewbar .number").html(resume["resume_scale"] + "分");
	},

	set_resume_language : function(resume) {// 设置中英文简历
		cvresume.info.language = resume["resume_language"];
	},

	set_resume_set : function(resume) {// 设置简历设置信息

		var resume_set = resume["resume_set"];

		// 设置颜色
		$("#resume_base").attr("data_color", resume_set["color"]);

		// 设置字体
		$("#resume_base").attr("data_font_name", resume_set["font"]);

		// 设置字体大小
		$("#resume_base").attr("data_font_size", resume_set["fontSize"]);

		// 设置行距
		$("#resume_base").attr("data_line_height", resume_set["padding"]);

		// 设置块距
		$("#resume_base").attr("data-modal_margin", resume_set["margin"]);

		// 设置字体类别
		$("#resume_base").attr("data_font_type", resume_set["fontType"]);
	},
	set_resume_modul_mg : function(resume) {// 设置模块管理信息
		var modul_show = resume["modul_show"];

		// 获取自荐信是否显示
		if (!modul_show["letterShow"]) {
			$("#resume_letter").addClass("hidden")
		} else {
			$("#resume_letter").removeClass("hidden")
		}
		// 设置封面是否显示
		if (!modul_show["coverShow"]) {
			$("#resume_cover").addClass("hidden")
		} else {
			$("#resume_cover").removeClass("hidden")
		}
		// 设置个人照片是否显示
		if (!modul_show["headShow"]) {
			$("#resume_head").addClass("hidden")
		} else {
			$("#resume_head").removeClass("hidden")
		}
		// 设置联系我是否显示
		if (!modul_show["contactShow"]) {
			$("#resume_contact").addClass("hidden")
		} else {
			$("#resume_contact").removeClass("hidden")
		}
		// 模块配置信息抽取
		var $all_modul = $("#resume_base").find(".moduleItem");
		console.log($all_modul);
		$all_modul.each(function(index, ele) {
			var $ele = $(ele);
			var key = $ele.attr("id");

			if (cvresume.main.is_empty(key)) {
				return true;
			}
			var set_config = modul_show[key];
			// 设置模块是否显示
			if (!set_config["isShow"]) {
				$ele.addClass("hidden")
			} else {
				$ele.removeClass("hidden")
			}
			// 设置标题是否显示
			if (!set_config["isTitleShow"]) {
				$ele.find(".hiddenTitle s").addClass("checked")
			} else {
				$ele.find(".hiddenTitle s").removeClass("checked")
			}

			// 设置时间是否显示
			if (!set_config["isTimeShow"]) {
				$ele.find(".hiddenTime s").addClass("checked")
			} else {
				$ele.find(".hiddenTime s").removeClass("checked")
			}

			// 设置内容是否显示
			if (!set_config["isContentShow"]) {
				$ele.find(".hiddenText s").addClass("checked")
			} else {
				$ele.find(".hiddenText s").removeClass("checked")
			}

			// 设置标题
			var $ele_title = $ele.find(".module_item_title");
			$ele_title.html(set_config["title"]);

			// 设置样式
			if (cvresume.info.resume_type == "手机") {
				$ele.attr("data-parts", set_config["wapModelStyle"]);
			} else {
				$ele.attr("data-parts", set_config["docModelStyle"]);
			}

		});

	},

	set_resume_icon_map : function(resume) {// 设置图标
		var $all_icon = $("#resume_base").find("a.divIconFont");
		var iconFontMap = resume["iconFontMap"];
		$all_icon.each(function(index, ele) {
			var key = $(ele).attr("for-key");
			if (cvresume.main.is_empty(key)) {
				return true;
			}
			$(ele).html(iconFontMap[key]);

		});

	},

	set_resume_cover_info : function(resume) {// 设置封面信息
		var cover_info = resume["resume_cover"];
		var $allList = $("#resume_cover").find(".moduleItemList");
		$allList.each(function(index, ele) {
			var info = cover_info.shift();
			if (info != undefined) {
				$(ele).find(".divIconFont").html(info["icon"]);
				$(ele).find('div[contenteditable="true"]')
						.html(info["content"]);
			}

		});
	},

	set_resume_letter : function(resume) {// 设置自荐信信息
		$("#resume_letter").find('div[contenteditable="true"]').html(
				resume["resume_letter"]);

	},

	set_resume_head : function(resume) {
		$("#resume_head").find('.img-preview img').attr("src",
				resume["resume_head"]);
		$("#resume_head").attr("data-size", resume["resume_headType"]);

	},

	set_resume_base_info : function(resume) {// 设置基本信息
		var $baseMsg = $("#resume_name");
		var $baseInfo = $("#base_info");
		var resume_base = resume["resume_base_info"];
		$baseMsg.find('.name').text(resume_base["name"]);// 姓名
		$baseMsg.find('.word').text(resume_base["minSummary"]);// 简单介绍语
		// 个人标签
		var personalTagsArray = resume_base["personalTags"];
		var htmlStr = "";
		personalTagsArray.forEach(function(value, index, array) {
			htmlStr += '<span>' + array[index].name + '</span>';
		});
		$baseMsg.find('.resume_tag').html(htmlStr);
		if (!cvresume.main.is_empty(htmlStr)) {
			$baseMsg.find('.resume_tag').removeClass("hidden");
		}
		// 个人基本信息

		if (!cvresume.main.is_empty(resume_base["birthYear"])) {
			$baseInfo
					.find('#birth span')
					.text(
							(new Date().getFullYear() - parseInt(resume_base["birthYear"]))
									+ "岁").attr(
							"data-value",
							resume_base["birthYear"] + "."
									+ resume_base["birthMonth"]);
		} else {
			$baseInfo.find('#birth').addClass("hidden");
		}

		if (!cvresume.main.is_empty(resume_base["city"])) {
			$baseInfo.find('#city span').text(resume_base["cityName"]).attr(
					"data-value", resume_base["city"]);
		} else {
			$baseInfo.find('#city').addClass("hidden");
		}

		if (!cvresume.main.is_empty(resume_base["jobYear"])) {
			var jobyearStr = "";
			if (resume_base["jobYear"] == "no") {
				jobyearStr = "无工作经验";
			} else if (resume_base["jobYear"] == "one") {
				jobyearStr = "1年工作经验";
			} else if (resume_base["jobYear"] == "two") {
				jobyearStr = "2年工作经验";
			} else if (resume_base["jobYear"] == "three") {
				jobyearStr = "3年工作经验";
			} else if (resume_base["jobYear"] == "four") {
				jobyearStr = "4年工作经验";
			} else if (resume_base["jobYear"] == "five") {
				jobyearStr = "5年工作经验";
			} else if (resume_base["jobYear"] == "six") {
				jobyearStr = "6年工作经验";
			} else if (resume_base["jobYear"] == "steven") {
				jobyearStr = "7年工作经验";
			} else if (resume_base["jobYear"] == "eight") {
				jobyearStr = "8年工作经验";
			} else if (resume_base["jobYear"] == "nine") {
				jobyearStr = "9年工作经验";
			} else if (resume_base["jobYear"] == "ten") {
				jobyearStr = "10年工作经验";
			} else if (resume_base["jobYear"] == "more") {
				jobyearStr = "10年以上工作经验";
			}
			$baseInfo.find('#jobYear span').attr("data-value",
					resume_base["jobYear"]);
			$baseInfo.find('#jobYear span').html(jobyearStr);
			$baseInfo.find('#jobYear').removeClass("hidden");
		}

		if (!cvresume.main.is_empty(resume_base["mobile"])) {
			$baseInfo.find('#mobile span').text(resume_base["mobile"]);
		} else {
			$baseInfo.find('#mobile').addClass("hidden");
		}

		if (!cvresume.main.is_empty(resume_base["email"])) {
			$baseInfo.find('#email span').text(resume_base["email"]);
		} else {
			$baseInfo.find('#email').addClass("hidden");
		}

		if (!cvresume.main.is_empty(resume_base["sex"])) {
			if (resume_base["sex"] == "male") {
				$baseInfo.find('#sex span').text("男");
			} else {
				$baseInfo.find('#sex span').text("女");
			}
			$baseInfo.find('#sex').removeClass("hidden");
		}

		if (!cvresume.main.is_empty(resume_base["education"])) {
			var eduStr = "";
			var eduChr = "";
			if (resume_base["education"] == "junior") {
				eduStr = "初中及以下";
				eduChr = "junior";
			} else if (resume_base["education"] == "high") {
				eduStr = "高中";
				eduChr = "high";
			} else if (resume_base["education"] == "technical") {
				eduStr = "中技";
				eduChr = "technical";
			} else if (resume_base["education"] == "polytechnic") {
				eduStr = "中专";
				eduChr = "polytechnic";
			} else if (resume_base["education"] == "associate") {
				eduStr = "大专";
				eduChr = "associate";
			} else if (resume_base["education"] == "bachelor") {
				eduStr = "本科";
				eduChr = "bachelor";
			} else if (resume_base["education"] == "master") {
				eduStr = "硕士";
				eduChr = "master";
			} else if (resume_base["education"] == "doctorate") {
				eduStr = "博士";
				eduChr = "doctorate";
			} else if (resume_base["education"] == "mba") {
				eduStr = "MBA";
				eduChr = "mba";
			} else {

			}
			$baseInfo.find('#education span').html(eduStr);
			$baseInfo.find('#education span').attr("data-value", eduChr);
			$baseInfo.find('#education').removeClass("hidden");
		}

		if (!cvresume.main.is_empty(resume_base["nation"])) {
			$baseInfo.find('#nation span').text(resume_base["nation"]);
			$baseInfo.find('#nation').removeClass("hidden");
		}

		if (!cvresume.main.is_empty(resume_base["marriageStatus"])) {
			var marrStr = "";
			var marrChr = "";
			if (resume_base["marriageStatus"] == "unMarried") {
				marrStr = "未婚";
				marrChr = "unMarried";
			} else if (resume_base["marriageStatus"] == "married") {
				marrStr = "已婚";
				marrChr = "married";
			} else if (resume_base["marriageStatus"] == "privary") {
				marrStr = "保密";
				marrChr = "privary";
			}
			$baseInfo.find('#marriageStatus span').html(marrStr);
			$baseInfo.find('#marriageStatus span').attr("data-value", marrChr);
			$baseInfo.find('#marriageStatus').removeClass("hidden");
		}

		if (!cvresume.main.is_empty(resume_base["politicalStatus"])) {
			var poliStr = "";
			var poliChr = "";
			if (resume_base["politicalStatus"] == "partyMember") {
				poliStr = "中共党员";
				poliChr = "partyMember";
			} else if (resume_base["politicalStatus"] == "probationaryParty") {
				poliStr = "中共预备党员";
				poliChr = "probationaryParty";
			} else if (resume_base["politicalStatus"] == "leagueMember") {
				poliStr = "共青团员";
				poliChr = "leagueMember";
			} else if (resume_base["politicalStatus"] == "democraticParty") {
				poliStr = "民主党派人士";
				poliChr = "democraticParty";
			} else if (resume_base["politicalStatus"] == "noParty") {
				poliStr = "无党派民主人士";
				poliChr = "noParty";
			} else if (resume_base["politicalStatus"] == "citizen") {
				poliStr = "普通公民";
				poliChr = "citizen";
			}
			$baseInfo.find('#politicalStatus span').html(poliStr);
			$baseInfo.find('#politicalStatus span').attr("data-value", poliChr);
			$baseInfo.find('#politicalStatus').removeClass("hidden");
		}

		if (!cvresume.main.is_empty(resume_base["height"])) {
			$baseInfo.find('#height span').text(resume_base["height"] + "cm");
			$baseInfo.find('#height span').attr("data-value",
					resume_base["height"]);
			$baseInfo.find('#height').removeClass("hidden");
		} else {
			$baseInfo.find('#height span').text(resume_base["height"]);
		}
		if (!cvresume.main.is_empty(resume_base["weight"])) {
			$baseInfo.find('#height span').text(
					$baseInfo.find('#height span').text() + "/"
							+ resume_base["weight"] + "kg");
			$baseInfo.find('#weight span').text(resume_base["weight"] + "kg");
			$baseInfo.find('#weight span').attr("data-value",
					resume_base["weight"]);
		} else {
			$baseInfo.find('#height span').text(
					$baseInfo.find('#height span').text());
		}

		// 个人自定义信息
		var msgArray = resume_base["customMsg"];
		var htmlStr = "";
		if (!cvresume.main.is_empty(msgArray)) {
			msgArray.forEach(function(value, index, array) {
				var custommsg = array[index];
				htmlStr += '<div class="info-defind info-list" id="'
						+ custommsg["key"] + '"><a title="' + custommsg["name"]
						+ '" class="wbdfont divIconFont" for-key="'
						+ custommsg["key"] + '"></a><span>'
						+ custommsg["desc"]
						+ '</span><a class="delete"></a></div>';
			});
			$baseInfo.find('#weight').append(htmlStr);
		}

		// 个人网站
		var homeArray = resume_base["customWebsite"];
		var htmlStr = "";
		if (!cvresume.main.is_empty(homeArray)) {
			homeArray.forEach(function(value, index, array) {
				var home = array[index];
				htmlStr += '<div class="home-list moduleItemList" id="'
						+ home["key"]
						+ '"><a class="wbdfont divIconFont" for-key="'
						+ home["key"] + '"></a><a class="name" href="'
						+ home["url"] + '" target="_blank">' + home["desc"]
						+ '</a><a class="delete"></a></div>';
			});
			$('#base_home .home-con').html(htmlStr);
			$('#base_home').removeClass("hidden");
		}

		// 个人社交账号

		if (!cvresume.main.is_empty(resume_base["weixin"])) {
			$('#base_social .social-con').find('.social-wx a').attr('href',
					'javascript:;').attr('data-title',
					'微信：' + resume_base["weixin"]);
			$('#base_social .social-con').find('.social-wx').removeClass(
					"hidden");
		}
		if (!cvresume.main.is_empty(resume_base["qq"])) {
			$('#base_social .social-con').find('.social-qq a').attr('href',
					'javascript:;').attr('data-title',
					'QQ：' + resume_base["qq"]);
			$('#base_social .social-con').find('.social-qq').removeClass(
					"hidden");
		}
		if (!cvresume.main.is_empty(resume_base["weibo"])) {
			$('#base_social .social-con').find('.social-wb a').attr('href',
					'javascript:;').attr('data-title',
					'微博：' + resume_base["weibo"]);
			$('#base_social .social-con').find('.social-wb').removeClass(
					"hidden");
		}
		if (!cvresume.main.is_empty(resume_base["zhihu"])) {
			$('#base_social .social-con').find('.social-zh a').attr('href',
					'javascript:;').attr('data-title',
					'知乎：' + resume_base["zhihu"]);
			$('#base_social .social-con').find('.social-zh').removeClass(
					"hidden");
		}
		if (!cvresume.main.is_empty(resume_base["dingding"])) {
			$('#base_social .social-con').find('.social-dd a').attr('href',
					'javascript:;').attr('data-title',
					'钉钉号：' + resume_base["dingding"]);
			$('#base_social .social-con').find('.social-dd').removeClass(
					"hidden");
		}

	},

	set_resume_job_preference : function(resume) {// 设置求职意向
		var job_preference = resume["resume_job_preference"];
		var $jobIntension = $("#resume_job_preference");

		if (!cvresume.main.is_empty(job_preference["jobFunction"])) {
			$jobIntension.find('#jobFunction span').text(
					job_preference["jobFunction"]);
		}

		if (!cvresume.main.is_empty(job_preference["jobType"])) {
			$jobIntension.find('#jobType span').attr("data-value",
					job_preference["jobType"]);
			if (job_preference["jobType"] == "fullTime") {
				$jobIntension.find('#jobType span').html("全职");
			} else if (job_preference["jobType"] == "partTime") {
				$jobIntension.find('#jobType span').html("兼职");
			} else if (job_preference["jobType"] == "intern") {
				$jobIntension.find('#jobType span').html("实习");
			}
		}

		if (!cvresume.main.is_empty(job_preference["jobTime"])) {
			$jobIntension.find('#jobTime span').attr("data-value",
					job_preference["jobTime"]);
			if (job_preference["jobTime"] == "immediately") {
				$jobIntension.find('#jobTime span').html("随时到岗");
			} else if (job_preference["jobTime"] == "withinOneWeek") {
				$jobIntension.find('#jobTime span').html("一周内到岗");
			} else if (job_preference["jobTime"] == "withinOneMonth") {
				$jobIntension.find('#jobTime span').html("一个月内到岗");
			} else if (job_preference["jobTime"] == "withinThreemonth") {
				$jobIntension.find('#jobTime span').html("三个月内到岗");
			} else if (job_preference["jobTime"] == "toBeDetermined") {
				$jobIntension.find('#jobTime span').html("到岗时间另议");
			}
		}

		if (!cvresume.main.is_empty(job_preference["jobCityName"])) {
			$jobIntension.find('#jobCity span').text(
					job_preference["jobCityName"]);
			$jobIntension.find('#jobCity span').attr("data-value",
					job_preference["jobCity"]);
		}

		if (!cvresume.main.is_empty(job_preference["jobMaxSalary"])) {
			if (job_preference["jobMaxSalary"] == 0) {
				$jobIntension.find('#jobSalary span').text("薪资面议");
			} else if (job_preference["jobMaxSalary"] != job_preference["jobMinSalary"]) {
				$jobIntension.find('#jobSalary span').text(
						job_preference["jobMinSalary"] + "K-"
								+ job_preference["jobMaxSalary"] + "K");
			} else if (job_preference["jobMaxSalary"] == job_preference["jobMinSalary"]) {
				$jobIntension.find('#jobSalary span').text(
						job_preference["jobMaxSalary"] + "元/日");
			}
		}

	},

	set_resume_skill : function(resume) {// 设置技能特长
		var $skill = $("#resume_skill");

		var skillArray = resume["resume_skill"];
		if (!cvresume.main.is_empty(skillArray)) {
			$skill.find(".skill-con").find("div:first").attr("style",
					"display: none;");
			var htmlStr = '';
			skillArray
					.forEach(function(value, index, array) {
						htmlStr += '<div class="skill-list moduleItemList" data-id="'
								+ array[index]["id"]
								+ '"><span class="skill-title item_title"> '
								+ array[index]["name"]
								+ ' </span><span class="skill-slider item_level" data_level="'
								+ array[index]["masterLevel"]
								+ '"><s><i class=" '
								+ array[index]["masterLevel"]
								+ ' "></i></s><span>'
								+ array[index]["masterLevelDesc"]
								+ '</span></span><a class="delete"></a></div>';

					});
			$skill.find(".skill-con").append(htmlStr);

		}

	},

	set_resume_hobby : function(resume) {// 设置兴趣爱好
		var $hobby = $("#resume_hobby");

		var hobbyArray = resume["resume_hobby"];
		if (!cvresume.main.is_empty(hobbyArray)) {
			$hobby.find(".hobby-con").find("div:first").attr("style",
					"display: none;");
			var htmlStr = '';
			hobbyArray.forEach(function(value, index, array) {
				var hobbyItem = array[index];
				htmlStr += '<div class="hobby-list moduleItemList" id="'
						+ hobbyItem["key"] + '" data-id="' + hobbyItem["id"]
						+ '"><a class="wbdfont divIconFont" for-key="'
						+ hobbyItem["key"]
						+ '"></a><span class="hobby-title item_title"> '
						+ hobbyItem["name"]
						+ ' </span><a class="delete"></a></div>';

			});
			$hobby.find(".hobby-con").append(htmlStr);

		}

	},

	set_resume_time_module : function(resume, id) {// 时间模块数据设置（教育背景、工作经历、实习经历、志愿者经历、项目经历）
		var $module = $(id);
		var key = $module.attr("id");
		var timeItemArray = resume[key];
		var htmlStr = '';
		timeItemArray
				.forEach(function(value, index, array) {
					if (index != 0) {
						htmlStr += '<div class="dd-content moduleItemList"><div class="dd-title clearfix "><span class="time"><div contenteditable="false" data-placeholder="设置时间..." data-placelang="time"><i class="time-start"></i>-<i class="time-end"></i></div></span><span class="company"><div contenteditable="false" data-placeholder="填写项目名称..." data-placelang="organization"></div></span><span class="post"><div contenteditable="false" data-placeholder="填写角色名称..." data-placelang="JobTitle"></div></span></div><div class="dd-text clearfix "><div class="resume_lang resume_content" contenteditable="false" for-key="exper_content" data-placeholder="在这里添加描述..." data-placelang="description"></div></div></div>';
					}
				});
		$module.find("dd").append(htmlStr);
		var $allmoduleItemList = $module.find(".moduleItemList");
		$allmoduleItemList
				.each(function(i, e) {
					var timeItem = timeItemArray[i];
					if (!cvresume.main.is_empty(timeItem)) {
						var $html = '<i class="time-start"></i>-<i class="time-end"></i>';
						$(e).find("span.time div[contenteditable]").html($html);
						$(e).find("i.time-start").text(timeItem["beginTime"]);
						$(e).find("i.time-end").text(timeItem["endTime"]);
						$(e).find(".company").find("div[contenteditable]")
								.html(timeItem["unit"]);
						$(e).find(".post").find("div[contenteditable]").html(
								timeItem["job"]);
						$(e).find(".resume_content").html(timeItem["content"]);
					}
				});
	},

	set_resume_summary : function(resume) {// 设置自我评价模块
		$("#resume_summary").find(".moduleItemList").find("div.resume_content")
				.html(resume["resume_summary"]);

	},

	set_resume_honor : function(resume) {// 设置奖项荣誉
		$("#resume_honor").find(".moduleItemList").find("div.resume_content")
				.html(resume["resume_honor"]);

	},

	set_resume_portfolio : function(resume) {// 设置作品展示
		var $resume_portfolio = $("#resume_portfolio");
		var $allmoduleItemList = $resume_portfolio.find(".moduleItemList");
		var portfolio = resume["resume_portfolio"];
		var portfolio_imgArray = portfolio["img"];
		var portfolio_linkArray = portfolio["link"];
		$allmoduleItemList.each(function(index, ele) {
			var $ele = $(ele);
			var portfolioTemp = {};

			if (portfolio_imgArray.length > 0) {// 图片
				portfolioTemp = portfolio_imgArray.shift();
				$ele.find(".work-img").find("img").attr("src",
						portfolioTemp["img"]);

			} else {// 地址使用title存放
				portfolioTemp = portfolio_linkArray.shift();
			}
			$ele.find(".work-title").html(portfolioTemp["title"]);
			$ele.find(".work-text").html(portfolioTemp["desc"]);
		});

	},

	set_resume_custom : function(resume) {// 自定义模块
		var resume_customs = resume["custom"];
		var $resume_customs = $(".customItem");
		$resume_customs.each(function(index, ele) {
			var $ele = $(ele);
			var custom = resume_customs.shift();
			$ele.attr("id", custom["key"]);// key
			// var position=$ele.parent().attr("id");
			// custom["position"]=!cvresume.main.is_empty(position) && position
			// == "bar" ? "right" : "left";//位置
			if (!custom["isTitleShow"]) {// 标题是否隐藏
				$ele.find(".hiddenTitle s").addClass("checked");
			} else {
				$ele.find(".hiddenTitle s").removeClass("checked");
			}
			if (!custom["isTimeShow"]) {// 时间模块是否隐藏
				$ele.find(".hiddenTime s").addClass("checked");
			} else {
				$ele.find(".hiddenTime s").removeClass("checked");
			}
			if (!custom["isContentShow"]) {// 描述是否隐藏
				$ele.find(".hiddenText s").addClass("checked");
			} else {
				$ele.find(".hiddenText s").removeClass("checked");
			}
			var $ele_title = $ele.find(".module_item_title");

			$ele_title.html(custom["title"]);
			if ($ele.hasClass("descItem")) {// 描述模块
				$ele.find(".resume_content").html(custom["content"]);
			} else {// 经验模块
				var timeItemArray = custom["itemList"];
				var $allmoduleItemList = $ele.find(".moduleItemList");
				$allmoduleItemList.each(function(i, e) {
					var timeItem = timeItemArray.shift();
					$(e).find("i.time-start").text(timeItem["beginTime"]);
					$(e).find("i.time-end").text(timeItem["endTime"]);
					$(e).find(".company").find("div[contenteditable]").html(
							timeItem["unit"]);
					$(e).find(".post").find("div[contenteditable]").html(
							timeItem["job"]);
					$(e).find(".resume_content").html(timeItem["content"]);

				});
			}
		});

	},

	set_resume_contact : function(resume) {// 设置联系我
		var contact = resume["resume_contact"];
		var $resume_contact = $("#resume_contact");
		$resume_contact.find(".resume_contact_name").html(contact["name"]);
		$resume_contact.find(".resume_contact_desc").html(contact["desc"]);
		$resume_contact.find(".resume_contact_mobile").html(contact["contact"]);
		$resume_contact.find(".resume_contact_content")
				.html(contact["content"]);

	},

	set_resume_qrcode : function(resume) {// 设置二维码
		var qrcode = resume["resume_qrcode"];
		var $qrcode = $("#resume_qrcode");
		// qrcode["qrCodeImg"]=$qrcode.find("img.qrImg").attr("src");
		$qrcode.find(".resume_content").html(qrcode["qrcodeTips"]);

	},

	set_resume_sort : function(resume) {// 设置模块排序
		var sort = resume["sort"];
		var _classStr = "#resume_base .wbdCv-base";
		$(cvresume.info.sortPosition).each(function(index, item) {
			var arr = sort[item.toLocaleLowerCase()];
			$($(_classStr + item + " .resume_sort")).each(function(index, ele) {
				$(ele).attr("id", arr.shift());
			});
		});

	},

	set_cvresume_info : function(itemid, resumeid, memberid) {// 简历id,模板ID，会员id设置
		if (!cvresume.main.is_empty(itemid)) {
			cvresume.main.info.itemid = itemid;
		}
		if (!cvresume.main.is_empty(resumeid)) {
			cvresume.main.info.resumeid = resumeid;
		}
		if (!cvresume.main.is_empty(memberid)) {
			cvresume.main.info.memberid = memberid;
		}
	},
	resume_sort : function(sort) {// 简历初始排序(sort:排序配置)
		if (sort) {
			var _classStr = "#resume_base .wbdCv-base";
			$(cvresume.info.sortPosition).each(function(i, item) {// 遍历方位
				var pos = sort[item.toLocaleLowerCase()];
				var $preModuleId;
				$(pos).each(function(j, jtem) {// 遍历各方位的id
					if (cvresume.main.is_empty($preModuleId)) {
						$(_classStr + item).prepend($("#" + jtem));// 在所在方位的div开头添加节点
					} else {
						$($preModuleId).after($("#" + jtem));// 在前一个节点后添加节点
					}
					$preModuleId = $("#" + jtem);// 把当前节点作为下次循环的子节点
				});
			});
		}
	},
	get_resume_history : function() {// 获取简历历史记录
		$.get("/resume/history/list/", {
			"itemid" : cvresume.info.itemid,
			"resumeId" : cvresume.info.resumeid
		}, function(message) {
			if ($(message).filter("li").length > 0) {
				$("#historyModal .czls-null").hide();
			}
			message = message.replace(/\{0}/g, cvresume.info.resume_type);
			$("#historyModal ul").html(message);
		});
	},
	resume_save_history : function() {// 保存简历历史记录
		if (cvresume.main.is_empty(cvresume.info.resumeid)) {
			return;
		}
		if (cvresume.history_save_trigger) {
			cvresume.history_save_trigger = false;
			var historyid = 0;
			if (window.localStorage
					&& !cvresume.main.is_empty(sessionStorage
							.getItem("historyid"))) {
				historyid = sessionStorage.getItem("historyid");
			}
			if (cvresume.main.is_empty(historyid)) {
				historyid = cvresume.info.historyid
			}
			var json = cvresume.main.get_resume();
			$.post("/resume/history/save/", {
				"historyid" : historyid,
				"resumeId" : cvresume.info.resumeid,
				"json" : JSON.stringify(json)
			}, function(message) {
				if (message.type == "success") {
					if (window.localStorage && cvresume.localStorage) {
						sessionStorage.setItem("historyid", message.content);
					}
					if (historyid != message.content) {
						cvresume.main.get_resume_history();
					}
				} else {// 消息框
					console.log(message.content);
					layer.msg(message.content);
				}
			});
		} else {
			// console.log("正在触发历史保存...");
		}
	},
	resume_preview_history : function(id, type) {// 简历历史记录预览
		window.open("/resume/history/preview/" + type + "/" + id + "/");
	},
	resume_rollback_history : function(resumeid, id) {// 简历历史记录恢复(回滚)-此方法无程序引用
		// 回滚前进行备份当前简历信息
		cvresume.main.resume_save_history();
		$.ajax({
			type : "get",
			cache : false,
			async : false,
			url : url,
			success : function(message) {
				if (message.type == "success") {
					location.reload();
				} else {// 消息框
					console.log(message);
				}
			}
		});
	},
	resume_preview_pageInit : function() {// 简历预览页面初始化
		$("div[contenteditable]").attr("contenteditable", "false");// 可编辑状态为false
		$(".baseItem-null").attr("style", "display:none;");// 自定义框隐藏
		// 求职意向图标去除
		$("#resume_job_preference .moduleItemList").each(function(id, item) {
			var _span = $(item).find("span").text();
			if (cvresume.main.is_empty(_span)) {
				$(this).attr("style", "display:none");
			}
		});
	},
	resume_release_pageInit : function() {// 简历发布页面初始化
		$(document).off("blur", "div[contenteditable='true']");// 去除失去焦点保存
		$("div[contenteditable='true']").off("blur");
		$("div[contenteditable]").attr("contenteditable", "false");// 可编辑状态为false
		$(".baseItem-null").attr("style", "display:none;");// 自定义框隐藏
		$("#resume_contact").find("div[contenteditable]:gt(0)").attr(
				"contenteditable", "true");// 联系我可编辑状态
	},
	resume_visit_pwd : function(visitid, visitpwd) {// 密码访问简历
		$.ajax({
			type : "post",
			cache : false,
			async : false,
			url : "/cvresume/" + visitid + "/pwd/",
			data : {
				"visitpwd" : visitpwd
			},
			success : function(message) {
				if (message.type == "success") {
					location.reload();
				} else {
					layer.msg(message.content);
				}
			}
		});
	},
	contact_me : function(resumeid) {// 联系我
		var name = $("#resume_contact").find('.resume_contact_name').text();
		var contact = $("#resume_contact").find('.resume_contact_mobile')
				.text();
		var content = $("#resume_contact").find('.resume_contact_content')
				.text();
		$.ajax({
			type : "POST",
			url : "/leaveWord/save/",
			data : {
				resumeId : resumeid,
				name : name,
				contact : contact,
				content : content
			},
			datetype : "Json",
			success : function(message) {
				if (message.type == "success") {
					layer.msg(message.content);
					$("#resume_contact").find('.resume_contact_name').text("");
					$("#resume_contact").find('.resume_contact_mobile')
							.text("");
					$("#resume_contact").find('.resume_contact_content').text(
							"");
				} else {
					layer.msg(message.content);
				}
			}
		});
	},
	is_empty : function(str) {
		if (str == null || str == "" || str == undefined) {
			return true;
		} else {
			return false;
		}
	},
	is_empty_ext : function(str) {
		if (str === null || str === "" || str === undefined) {
			return true;
		} else {
			return false;
		}
	},
	isJsonFormat : function(str) {// json格式校验
		try {
			JSON.parse(str);
			return true;
		} catch (e) {
			return false;
		}
	},
	isResumeMgFormat : function(resumeMg) {// 模块管理格式验证(resumeMg必须包含：isContenShow、isShow、isTimeShow、isTimeShow、key、title)
		if (cvresume.main.is_empty_ext(resumeMg)) {
			return false;
		}
		if (cvresume.main.is_empty_ext(resumeMg.isContentShow)) {// 描述是否显示
			return false;
		}
		if (cvresume.main.is_empty_ext(resumeMg.isShow)) {// 模块是否显示
			return false;
		}
		if (cvresume.main.is_empty_ext(resumeMg.isTimeShow)) {// 时间模块是否显示
			return false;
		}
		if (cvresume.main.is_empty_ext(resumeMg.isTitleShow)) {// 标题是否显示
			return false;
		}
		if (cvresume.main.is_empty_ext(resumeMg.key)) {// key
			return false;
		}
		if (resumeMg.title === undefined) {// 标题
			return false;
		}
		return true;
	},
	strToJson : function(str) {
		return JSON.parse(str);
	},
	set_visitid : function(visitid) {
		$.post("/cvresume/set_visitid/", {
			"visitid" : visitid,
			"resumeid" : cvresume.info.resumeid
		},
				function(message) {
					if (message.type == "success") {
						if (cvresume.main.is_empty(cvresume.info.resumeid)
								|| cvresume.info.resumeid == 0) {
							var resumeJson = cvresume.main
									.strToJson(message.content);
							cvresume.info.resumeid = resumeJson.resumeid;
							cvresume.info.memberid = resumeJson.memberid;
						}
						var _oldVisitid = cvresume.info.visitid;
						cvresume.info.visitid = visitid;
						if (location.href.indexOf("/cvresume/" + _oldVisitid
								+ "/") != -1) {// 发布页修改浏览器地址
							history.pushState(null, "个性域名修改", wbdcnf.base
									+ "/cvresume/" + cvresume.info.visitid
									+ "/");
						}
						layer.msg("修改成功~");
					} else {
						layer.msg(message.content);
						setTimeout(function() {
							$("#visitid").val(cvresume.info.visitid);
						}, 1500)
					}
				});
	},
	/** 获取唯一标识 */
	uuid : function() {
		var uuid = "";
		for (var i = 1; i <= 32; i++) {
			var n = Math.floor(Math.random() * 16.0).toString(16);
			uuid += n;
			if (i == 8 || i == 12 || i == 16 || i == 20)
				uuid += "";
		}
		return uuid;
	},
	replaceAll : function(str, sou, tar) {
		return str.replace(new RegExp(sou, "gm"), tar);
	},
	// 时间模块空值校验
	timeModuleIsEmpty : function(str) {
		if (cvresume.main.is_empty(str) || str == "开始时间" || str == "结束时间") {
			return true;
		} else {
			return false;
		}
	},
	gernateResumeWapQrCodeImage : function(resumeid) {// 生成手机简历二维码
		var message = {};
		// 1拼接二维码连接
		if (cvresume.main.is_empty(resumeid)) {
			message["type"] = "error";
			message["content"] = "resumeid不能为空";
			return message;
		}
		// 判断二维码图片地址
		var $resume_qrcode = $("#resume_qrcode").find("img")
		var resume_qrcode_url = $resume_qrcode.attr("src");
		if (resume_qrcode_url.indexOf("/resources/500d/cvresume/js/bcebos.com") != -1) {
			message["type"] = "error";
			message["content"] = "已生成为二维码，不能重复生成";
			return message;
		}
		var host = location.hostname;
		var codeUrl = "http://" + host + "/cvresume/qrcode_redirect/"
				+ resumeid + "/";
		// 2生成隐藏的画布节点
		var $qrCodeImage = $("#gernateResumeWapQrCodeImage");
		if ($qrCodeImage.length <= 0) {
			$("body")
					.append(
							"<div style='display:none' id='gernateResumeWapQrCodeImage'></div>");
			$qrCodeImage = $("#gernateResumeWapQrCodeImage");
			$qrCodeImage.hide();
		}
		$qrCodeImage.qrcode({
			width : 173, // 宽度
			height : 173, // 高度
			text : codeUrl
		// 任意内容
		});
		// 3获取图片base64编码
		var iamge_data = $qrCodeImage.children("canvas")[0]
				.toDataURL("image/png");
		// 4上传图片并返回连接
		$.post(wbdcnf.base + '/file/upload/cropper_image.jhtml', {
			"token" : getCookie("token"),
			"cropper_image" : iamge_data.toString()
		}, function(result) {
			if (result == "error") {
				message["type"] = "error";
				message["content"] = "上传二维码图片错误";
				return message;
			} else if (result == "notlogin") {
				message["type"] = "error";
				message["content"] = "上传图片请先登录！";
				return message;
			} else if (result == "ntosuport") {
				message["type"] = "error";
				message["content"] = "文件格式不支持！";
				return message;
			} else if (result == "not_data") {
				message["type"] = "error";
				message["content"] = "图片上传出错！";
				return message;
			} else {
				// 调用更新接口
				$.post(wbdcnf.base + '/cvresume/setResumeQrCodeImg/' + resumeid
						+ '/', {
					"token" : getCookie("token"),
					"qrcodeImg" : result
				}, function(message) {
					if (message.type == "success") {
						$resume_qrcode.attr("src", result);
						message["type"] = "success";
						message["content"] = result;
						return message;
					} else {
						message["type"] = "error";
						message["content"] = message.content;
						return message;
					}
				});
			}
		});
	},
	_500dtongji : function(lable) {
		try {
			if (window.localStorage
					&& (cvresume.main.is_empty(localStorage
							.getItem("pcEditDataUpdated")) || localStorage
							.getItem("pcEditDataUpdated") != cvresume.info.resumeid)) {
				common.main._500dtongji(lable);
				localStorage.setItem("pcEditDataUpdated",
						cvresume.info.resumeid);
			}
		} catch (e) {
			console.log("统计埋点错误~");
		}
	},
	commend_personal_tags : function(page) {// 推荐个人标签
		$.get(wbdcnf.base + "/cvresume/commend_personal_tags.jhtml",
				function(result) {
					if (result != null && result != ""
							&& result.indexOf("span") != -1) {
						// 区分手机或文档的埋点信息
						result = result.replace(/\{0}/g,
								cvresume.info.resume_type);
						$(".tag_item .tag_bar").append(result);
						$(".tag_item .tag_bar").find("span").hide();
						$(".tag_item .tag_bar").find("span:lt(7)").show();
					}
				});
	},
	commend_personal_tags_update_use_num : function(id) {// 推荐个人标签使用统计
		$.get(wbdcnf.base
				+ "/cvresume/commend_personal_tags/update_use_num.jhtml", {
			"id" : id
		}, function(result) {
			if (result.type != "success") {
				console.log(result);
			}
		});
	},
	preview_pdf : function() {
		var isChrome = navigator.userAgent.indexOf("Chrome");
		var isFirefox = navigator.userAgent.indexOf("Firefox");
		var is360 = window.navigator.mimeTypes[40]
				|| !window.navigator.mimeTypes.length;
		var isqq = window.navigator.userAgent.indexOf('QQBrowser') > -1;
		var isSg = window.navigator.userAgent.toLowerCase().indexOf('se 2.x') > -1;
		var isSafari = window.navigator.userAgent.indexOf("Safari") > -1;
		var isIe = window.navigator.userAgent.indexOf('MSIE') > -1;
		function isShow() {
			$(".pdf_tips").addClass("show");
		}
		function isHide() {
			$(".pdf_tips").removeClass("show");
		}
		if (is360 || isSg) {
			isShow();
		} else {
			isHide();
		}
		$(".pdf_tips .close").click(function() {
			isHide();
		});

	},
	set_resume_content : function() {// 获取简历数据内容并设置
		var resume_content = $("#resume_content").val();
		console.log(resume_content);
		if (resume_content != "") {
			cvresume.main.set_resume(resume_content);
		}
	}

}

$(function() {
	cvresume.main.set_resume_content();
});