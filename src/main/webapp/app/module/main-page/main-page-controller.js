/**
 * define RBAC.MainPageController
 */
rbacApp.controller(
	'RBAC.MainPageController',
	[ '$scope','RBAC.MainPageService',
	function ($scope,mainPageService) {
		$scope.words = mainPageService.test();
	}
]);