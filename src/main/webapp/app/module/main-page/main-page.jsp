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
	<body ng-controller="RBAC.MainPageController" ng-init="initPage()">
		
		<div class="ui-layout-west">
			<div class="header">Outer - West</div>
			<div class="icon-input">
				<input type="text" class="form-control">
				<span class="glyphicon glyphicon-filter"></span>
			</div>
			
			
			<div class="content">
				<p>Here should be a tree menu list</p>
				<!-- <ul>
					<li><a href="#" onClick="outerLayout.toggle('north')">Toggle North</a></li>
					<li><a href="#" onClick="outerLayout.toggle('south')">Toggle South</a></li>
					<li><a href="#" onClick="outerLayout.toggle('west')"> Toggle West</a></li>
					<li><a href="#" onClick="outerLayout.toggle('east')"> Toggle East</a></li>
					<li><a href="#" onClick="outerLayout.hide('north')">Hide North</a></li>
					<li><a href="#" onClick="outerLayout.hide('south')">Hide South</a></li>
					<li><a href="#" onClick="outerLayout.show('south', false)">Unhide South</a></li>
					<li><a href="#" onClick="outerLayout.hide('east')"> Hide East</a></li>
					<li><a href="#" onClick="outerLayout.show('east', false)">Unhide East</a></li>
					<li><a href="#" onClick="outerLayout.open('east')"> Open East</a></li>
					<li><a href="#" onClick="outerLayout.open('north'); outerLayout.sizePane('north', 'auto')">  Resize North="auto"</a></li>
					<li><a href="#" onClick="outerLayout.sizePane('north', 100); outerLayout.open('north')">  Resize North=100</a></li>
					<li><a href="#" onClick="outerLayout.sizePane('north', 300); outerLayout.open('north')">  Resize North=300</a></li>
					<li><a href="#" onClick="outerLayout.sizePane('north', 10000); outerLayout.open('north')">Resize North=10000</a></li>
					<li><a href="#" onClick="outerLayout.open('south'); outerLayout.sizePane('south', 'auto')">  Resize South="auto"</a></li>
					<li><a href="#" onClick="outerLayout.sizePane('south', 100); outerLayout.open('south')">  Resize South=100</a></li>
					<li><a href="#" onClick="outerLayout.sizePane('south', 300); outerLayout.open('south')">  Resize South=300</a></li>
					<li><a href="#" onClick="outerLayout.sizePane('south', 10000); outerLayout.open('south')">Resize South=10000</a></li>
					<li><a href="#" onClick="outerLayout.panes.north.css('backgroundColor','#FCC')">North Color = Red</a></li>
					<li><a href="#" onClick="outerLayout.panes.north.css('backgroundColor','#CFC')">North Color = Green</a></li>
					<li><a href="#" onClick="outerLayout.panes.north.css('backgroundColor','')">    North Color = Default</a></li>
					<li><a href="#" onClick="alert('outerLayout.name = \''+outerLayout.options.name+'\'')">Show Layout Name</a></li>
					<li><a href="#" onClick="showOptions(outerLayout,'defaults')">Show Options.Defaults</a></li>
					<li><a href="#" onClick="showOptions(outerLayout,'north')">   Show Options.North</a></li>
					<li><a href="#" onClick="showOptions(outerLayout,'south')">   Show Options.South</a></li>
					<li><a href="#" onClick="showOptions(outerLayout,'west')">    Show Options.West</a></li>
					<li><a href="#" onClick="showOptions(outerLayout,'east')">    Show Options.East</a></li>
					<li><a href="#" onClick="showOptions(outerLayout,'center')">  Show Options.Center</a></li>
					<li><a href="#" onClick="showState(outerLayout,'container')"> Show State.Container</a></li>
					<li><a href="#" onClick="showState(outerLayout,'north')">     Show State.North</a></li>
					<li><a href="#" onClick="showState(outerLayout,'south')">     Show State.South</a></li>
					<li><a href="#" onClick="showState(outerLayout,'west')">      Show State.West</a></li>
					<li><a href="#" onClick="showState(outerLayout,'east')">      Show State.East</a></li>
					<li><a href="#" onClick="showState(outerLayout,'center')">    Show State.Center</a></li>
				</ul> -->
			</div>
		
			<div class="footer">Automatically positioned footer</div>
		
		</div>
		
		<div class="ui-layout-east">
		
			<div class="header">Outer - East</div>
		
			<div class="subhead">I'm a subheader</div>
		
			<div class="content">
				<h3><b>Inner Layout</b></h3>
				<ul id="createInner">
					<li><a href="#" onClick="createInnerLayout(); return false;">CREATE Inner Layout</a></li>
				</ul>
				<ul id="innerCommands" style="display: none;">
					<li><a href="#" onClick="innerLayout.toggle('north')">Toggle North</a></li>
					<li><a href="#" onClick="innerLayout.toggle('south')">Toggle South</a></li>
					<li><a href="#" onClick="innerLayout.toggle('west')"> Toggle West</a></li>
					<li><a href="#" onClick="innerLayout.toggle('east')"> Toggle East</a></li>
					<li><a href="#" onClick="innerLayout.hide('north')">Hide North</a></li>
					<li><a href="#" onClick="innerLayout.hide('south')">Hide South</a></li>
					<li><a href="#" onClick="innerLayout.hide('west')"> Hide West</a></li>
					<li><a href="#" onClick="innerLayout.hide('east')"> Hide East</a></li>
					<li><a href="#" onClick="innerLayout.show('east')"> Show East</a></li>
					<li><a href="#" onClick="innerLayout.sizePane('north', 50); innerLayout.open('north')">   Resize North=50</a></li>
					<li><a href="#" onClick="innerLayout.sizePane('north', 300); innerLayout.open('north')">  Resize North=300</a></li>
					<li><a href="#" onClick="innerLayout.sizePane('north', 10000); innerLayout.open('north')">Resize North=10000</a></li>
					<li><a href="#" onClick="innerLayout.sizePane('south', 50); innerLayout.open('south')">   Resize South=50</a></li>
					<li><a href="#" onClick="innerLayout.sizePane('south', 300); innerLayout.open('south')">  Resize South=300</a></li>
					<li><a href="#" onClick="innerLayout.sizePane('south', 10000); innerLayout.open('south')">Resize South=10000</a></li>
					<li><a href="#" onClick="innerLayout.panes.north.css('backgroundColor','#FCC')">North Color = Red</a></li>
					<li><a href="#" onClick="innerLayout.panes.north.css('backgroundColor','#CFC')">North Color = Green</a></li>
					<li><a href="#" onClick="innerLayout.panes.north.css('backgroundColor','')">    North Color = Default</a></li>
					<li><a href="#" onClick="alert('innerLayout.name = \''+innerLayout.options.name+'\'')">Show Layout Name</a></li>
					<li><a href="#" onClick="showOptions(innerLayout,'defaults')">Show Options.Defaults</a></li>
					<li><a href="#" onClick="showOptions(innerLayout,'north')">   Show Options.North</a></li>
					<li><a href="#" onClick="showOptions(innerLayout,'south')">   Show Options.South</a></li>
					<li><a href="#" onClick="showOptions(innerLayout,'west')">    Show Options.West</a></li>
					<li><a href="#" onClick="showOptions(innerLayout,'east')">    Show Options.East</a></li>
					<li><a href="#" onClick="showOptions(innerLayout,'center')">  Show Options.Center</a></li>
					<li><a href="#" onClick="showState(innerLayout,'container')"> Show State.Container</a></li>
					<li><a href="#" onClick="showState(innerLayout,'north')">     Show State.North</a></li>
					<li><a href="#" onClick="showState(innerLayout,'south')">     Show State.South</a></li>
					<li><a href="#" onClick="showState(innerLayout,'west')">      Show State.West</a></li>
					<li><a href="#" onClick="showState(innerLayout,'east')">      Show State.East</a></li>
					<li><a href="#" onClick="showState(innerLayout,'center')">    Show State.Center</a></li>
				</ul>
			</div>
		
			<div class="footer">I'm a footer</div>
			<div class="footer">I'm another footer</div>
			<div class="footer">Unlimited headers &amp; footers</div>
		
		</div>
		
		
		<div class="ui-layout-north">
			<div class="header">Outer - North</div>
			<div class="content">
				I only have toggler when 'closed' - I cannot be resized - and I do not 'slide open'
			</div>
			
			<div class="common-tab-wrap">
				<ul class="nav nav-tabs" id="commonTab">
					<li class="active"><a href="#home" data-toggle="tab">Home<span class="close">&times;</span></a></li>
					<li><a href="#profile" data-toggle="tab">Profile<span class="close">&times;</span></a></li>
					<li><a href="#messages" data-toggle="tab">Messages<span class="close">&times;</span></a></li>
					<li><a href="#settings" data-toggle="tab">Settings<span class="close">&times;</span></a></li>
				</ul>
			</div>
		</div>
		
		
		<div class="ui-layout-south">
			<div class="header">Outer - South</div>
			<div class="content">
				<p>I only have a resizer/toggler when 'open'</p>
			</div>
		</div>
		
		
		<div id="mainContent">
			<!-- DIVs for the INNER LAYOUT -->
		
			<div class="ui-layout-center">
				
				<div class="ui-layout-content">
					<div class="tab-content">
						<div class="tab-pane active" id="home">home</div>
						<div class="tab-pane" id="profile">profile</div>
						<div class="tab-pane" id="messages">messages</div>
						<div class="tab-pane" id="settings">settings</div>
					</div>
				</div>
				
			</div>
		
		</div>

	</body>
</html>
