/**
 * define RBAC.UserManagerController
 */
rbacApp.controller(
	'RBAC.UserManagerController',
	[ '$scope','RBAC.UserManagerService',
	function ($scope,userManagerService) {
		// define ItemsController like normal
		$scope.words = userManagerService.test();
	}
]);