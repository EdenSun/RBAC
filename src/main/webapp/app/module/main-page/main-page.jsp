<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html ng-app="RBAC">
	<head>
		<title>Index</title>
		
		<%@include file="/app/common/header.jsp" %>
		<link rel="stylesheet" type="text/css" href='<c:url value="/app/module/main-page/main-page.css"/>' ></link>
		<script type="text/javascript" src='<c:url value="/app/module/main-page/main-page-service.js"/>'></script>
		<script type="text/javascript" src='<c:url value="/app/module/main-page/main-page-controller.js"/>'></script>
	</head>
	<body ng-controller="RBAC.MainPageController">
		<h2>Hello World! FOR TEST !!!{{words}}</h2>
	</body>
</html>
