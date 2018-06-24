<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Bootstrap导航条鼠标悬停下拉菜单</title>
<link rel="stylesheet" href="resources/web/css/bootstrap.css" />
<script type="text/javascript" src="resources/web/js/jquery.min.js?v=1"></script>
<script type="text/javascript"
	src="resources/web/js/bootstrap.min.js?v=1"></script>
<style type="text/css">
.navbar .nav>li .dropdown-menu {
	margin: 0;
}

.navbar .nav>li:hover .dropdown-menu {
	display: block;
}

li {
	width : 200px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="navbar">
			<div class="navbar-inner">
				<ul class="nav nav-pills">
					<li class="active"><a href="#">Home</a></li>
					<li class="dropdown"><a href="#">SVN<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">sub SVN1</a></li>
							<li><a href="#">sub SVN2</a></li>
						</ul></li>
					<li><a href="#">iOS</a></li>
					<li><a href="#">VB.Net</a></li>
					<li class="dropdown"><a href="#">Java<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">sub Java1</a></li>
							<li><a href="#">sub Java2</a></li>
						</ul></li>
					<li><a href="#">PHP</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
</html>
