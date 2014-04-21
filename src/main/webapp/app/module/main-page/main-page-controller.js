/**
 * define RBAC.MainPageController
 */
rbacApp.controller(
	'RBAC.MainPageController',
	[ '$scope','RBAC.MainPageService','UIService',
	function ($scope,mainPageService,UIService) {
		$scope.words = mainPageService.test();
		
		$scope.initPage = function(){
			// 初始化布局
			UIService.doInitLayout();
		}
	}
]);