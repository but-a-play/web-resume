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
<html class="cv-preview-html">
<head>
<base href="<%=basePath%>"></base>
<meta charset="UTF-8">
<META NAME="ROBOTS" CONTENT="noindex,nofollow">
<meta name="robots" content="noarchive">
<title>简历题目</title>
<link href="resources/plugin/cropper/cropper.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/web/css/layer.css" />
<link rel="stylesheet" href="resources/web/editresume/css/base.css" />
<link rel="stylesheet" href="resources/web/common/css/common.css?v=11" />
<link rel="stylesheet" href="resources/web/cvresume/css/common.css?v=771" />
<link rel="stylesheet" href="resources/web/cvresume/css/parts_css.css" />
<link rel="stylesheet" href="resources/web/cvresume/css/jm0203.css" />
<script type="text/javascript" src="resources/web/js/jquery.min.js?v=1"></script>
</head>
<body class="cv-preview">
	
	
</body>
</html>
