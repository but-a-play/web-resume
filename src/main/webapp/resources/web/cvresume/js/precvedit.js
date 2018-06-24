/**
 * 在线简历简历前端交互操作
 */
var cvmutual = cvmutual || {};
cvmutual.main = cvmutual.main || {};
cvmutual.info = {
	vipMessages : {},
	resume_type : "文档"
};
cvmutual.tips_show = true;// 贴士展示

cvmutual.main = {
	init_ : function() {// 初始化

		cvmutual.main.resume_page();

		// 创建自定义模块
		cvmutual.main.create_customItem();
		// 创建带时间模块
		cvmutual.main.create_timeItem_content();

		// 简历分享
		cvmutual.main.resume_share();

		cvmutual.main.create_workItem_hover();

	},
	resume_share : function() {// 简历分享
		$("#recommend-modal #recommendUrl").on('click', function() {
			var str = $("#recommend-modal .recommendContent span").html();
			cvmutual.main.set_copyToClipBoard(str);
			$("#recommendUrl").html("复制成功")
		});
		// 分享
		$("#share_btn").click(function() {
			var visitid = cvresume.info.visitid;
			if (cvresume.main.is_empty(visitid)) {
				layer.msg("亲，保存简历才可以分享简历哦~");
				return false;
			}
			$(".shareContent input").val(visitid);
			$("#shareResume-modal").modal("show");
		});
		$("#shareResume-modal #copyUrl").on(
				"click",
				function() {
					var str = $(".shareContent span").html()
							+ $(".shareContent input").val() + "/";
					cvmutual.main.set_copyToClipBoard(str);
					$("#copyUrl").html("复制成功");
					setTimeout(function() {
						$("#copyUrl").html("复制链接")
					}, 2000);
				});
	},
	resume_page : function() {// 简历分页
		if ($(".wbdCv-container").hasClass("mobile")) {
		} else {
			var nowPageSize = 0; // 当前页数
			var resumePageHeight = 1160;// 每页高度
			var resumePageHtml = '<div class="page_tips"><div class="tips_inner"><span class="tips_title">温馨提示：</span><span class="tips_text">此处为分页线，内容超出一页请用回车键换行隔开。</span></div></div>';
			var resumeHeight = $(".wbdCv-resume").css({
				"height" : "auto",
				"min-height" : 1160 * 2 / 3
			}).outerHeight();
			$(".wbdCv-resume").css("height", resumeHeight);

			var pageSize = Math.ceil(resumeHeight / resumePageHeight);
			if (pageSize != nowPageSize) {
				nowPageSize = pageSize;
				$("div.page_tips").remove();
				for (var index = 1; index < pageSize; index++) {
					var pageBreakObj = $(resumePageHtml);
					pageBreakObj.css({
						"top" : (index * resumePageHeight) + "px"
					});
					$(".wbdCv-resume").append(pageBreakObj);
				}
			}
		}
	},

	create_customItem : function() {// 创建自定义模块
		$(document).on(
				"click",
				"#custom-modal .resume_add",
				function() {
					var title = $("#custom-modal").find(".resume_title").val();
					var time = $("#custom-modal").find(
							".time div[contenteditable]").html();
					var unit = $("#custom-modal").find(".resume_unit").val();
					var job = $("#custom-modal").find(".resume_job").val();
					var content = $('#custom-modal').find(".resume_content")
							.val();
					var $lastchild = $(".addCustomItem.selected");
					var item = $("#add_resume_time").clone();
					var item1 = $("#add_resume_desc").clone();
					var $customtitle = $("#showul li.grzp").clone();
					item.removeAttr("style");
					item.find("dt,.dd-title,.dd-text").removeClass("hidden");
					item.find(".baseItem-toolbar .set .set-list").removeClass(
							"hidden");
					item.find(".baseItem-toolbar .set .set-list s")
							.removeClass("checked");
					item1.removeAttr("style");
					if (!title || title == "") {
						layer.msg("请填写模块标题名称");
						$("#custom-modal").find(".resume_title").focus();
					} else {
						var uuid = cvresume.main.uuid();
						if (($("#custom-modal").find(".time")
								.hasClass("hidden"))
								|| (unit && unit.length > 0)
								|| (job && job.length > 0)) {
							item.attr("id", uuid);
							item.find("[for-key]").attr("for-key", uuid);
							item.addClass("customItem");
							item.removeClass("experItem");
							item.find(".dd-content:first-child").siblings(
									".dd-content").remove();
							item.find("dt span a.wbdfont").text("&#xe70f;");
							item.find("dt span div[contenteditable]").text(
									title);
							item.find(".time div[contenteditable]").html(time);
							item.find(".company div[contenteditable]").text(
									unit);
							item.find(".post div[contenteditable]").text(job);
							item.find(".dd-text div[contenteditable]").text(
									content);
							item.find("dt span div[contenteditable]").attr(
									"data-placeholder", "自定义标题...")
							item.find(".company div[contenteditable]").attr(
									"data-placeholder", "自定义...")
							item.find(".post div[contenteditable]").attr(
									"data-placeholder", "自定义...")
							item.find(".dd-text div[contenteditable]").attr(
									"data-placeholder", "添加自定义描述...");
							item.insertBefore($lastchild);
							common.main._500dtongji("PC-在线制作-"
									+ cvmutual.info.resume_type
									+ "编辑页-中间简历编辑-自定义模块-添加时间模块");
						} else {
							item1.attr("id", uuid);
							item1.find("[for-key]").attr("for-key", uuid);
							item1.addClass("customItem");
							item1.removeClass("honorItem");
							item1.find("dt span a.wbdfont").text("&#xe70f;");
							item1.find("dt span div[contenteditable]").text(
									title);
							item1.find(".dd-text div[contenteditable]").text(
									content);
							item1.find("dt span div[contenteditable]").attr(
									"data-placeholder", "自定义标题...")
							item1.find(".dd-text div[contenteditable]").attr(
									"data-placeholder", "添加自定义描述...");
							item1.insertBefore($lastchild);
							common.main._500dtongji("PC-在线制作-"
									+ cvmutual.info.resume_type
									+ "编辑页-中间简历编辑-自定义模块-添加描述模块");
						}
						$customtitle.find("a").attr("for-id", uuid);
						$customtitle.removeClass("grzp");
						$customtitle.find("a").attr("title", "删除此模块");
						$customtitle.find("span").attr("data-placeholder",
								"自定义模块");
						$customtitle.addClass("custom-li");
						$customtitle.find(".name").text(title);
						$customtitle.insertAfter($("#showul li:last-child"));
						$("#custom-modal").modal("hide");
					}
					$(".addCustomItem").removeClass("selected");
					cvmutual.main.resume_page();
					$("#bar").sortable("refresh");
					$("#foo").sortable("refresh");
				});
		$(document).on(
				"click",
				".custom-time-input .dateBar-con li span",
				function() {
					var $this = $(this).parents(".dateBar");
					$this.siblings("b").addClass("hidden");
					$this.siblings("div[contenteditable]")
							.removeClass("hidden");
				});
		// 点击事件
		$(".addCustomItem").click(
				function() {
					$("#custom-modal").find(".resume_title").val("");
					$("#custom-modal").find(".time b").removeClass("hidden");
					$("#custom-modal").find(".time div[contenteditable]")
							.addClass("hidden");
					$("#custom-modal").find(".resume_unit").val("");
					$("#custom-modal").find(".resume_job").val("");
					$("#custom-modal").find(".resume_content").val("");
					$("#custom-modal").modal();
					$(".addCustomItem").removeClass("selected");
					$(this).addClass("selected");
					if ($(".addCustomItem.selected").parents().hasClass(
							"wbdCv-baseLeft")) {
						$("#custom-modal").find(".custom-time-input").addClass(
								"hidden");
					} else {
						$("#custom-modal").find(".custom-time-input")
								.removeClass("hidden");
					}
				});
	},
	create_timeItem_content : function() {// 创建子模块
		$(document).on(
				"click",
				".timeItem .baseItem-toolbar .add",
				function() {
					cvmutual.main.reusme_autocompleter();
					var $this = $(this).parent(".baseItem-toolbar").siblings(
							"dl").children("dd").children(
							".dd-content:first-child");
					var $lastchild = $(this).parent(".baseItem-toolbar")
							.siblings("dl").children("dd").children(
									".dd-content:last-child");
					var $item = $this.clone();
					$item.removeAttr("data-id");
					$item.find(".time div[contenteditable]").text("");
					$item.find(".company div").text("");
					$item.find(".post div").text("");
					$item.find(".dd-text div").text("");
					$item.insertAfter($lastchild);
					cvmutual.main.resume_page();
				});
	},
	create_workItem_hover : function() {// 创建作品展示hover
		var html1 = '<div class="span-hover"></div>';
		var html2 = '<a class="delete preItem500dtongji" data_track="PC-在线制作-'
				+ cvmutual.info.resume_type + '编辑页-中间简历编辑-{0}-子模块删除"></a>';
		var html3 = '<a class="work-edit"></a>';
		var html4 = '<div class="move-downup">'
				+ '<a class="up save_opt preItem500dtongji" data_track="PC-在线制作-'
				+ cvmutual.info.resume_type
				+ '编辑页-中间简历编辑-{0}-子模块上移"></a>'
				+ '<a class="down save_opt preItem500dtongji" data_track="PC-在线制作-'
				+ cvmutual.info.resume_type + '编辑页-中间简历编辑-{0}-子模块下移"></a>'
				+ '<a class="delete preItem500dtongji" data_track="PC-在线制作-'
				+ cvmutual.info.resume_type + '编辑页-中间简历编辑-{0}-子模块删除"></a>'
				+ '</div>';
		$(
				".work-con-link .link-list,.work-con .work-list,.infoItem .info-con div,.homeItem .home-list,.skillItem .skill-list,.hobbyItem .hobby-list,.coverItem .cover-list")
				.append(html2);
		$(".work-con-link .link-list,.work-con .work-list").append(html3);
		$(".work-list .work-img").append(html1);
		$(".dd-content .dd-title,.recoment-list .hd").before(html4);
	}
};
$(function() {
	cvmutual.main.init_();// 初始化
});