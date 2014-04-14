<html>
	<head ng-app="RBAC">
		<title>Index</title>
		
		<%@include file="/app/common/header.jsp" %>
		<link rel="stylesheet" type="text/css" href='<c:url value="/app/module/main-page/main-page.css"/>' ></link>
		<script type="text/javascript" src='<c:url value="/app/module/main-page/main-page-controller.js"/>'></script>
	</head>
	<body ng-controller="MainPageCtrl">
		<h2>Hello World! FOR TEST !!!{{words}}</h2>
	</body>
</html>
