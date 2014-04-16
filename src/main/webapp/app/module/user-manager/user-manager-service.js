/**
 * define RBAC.UserManagerService 
 */

rbacApp.service('RBAC.UserManagerService',function($http, $q){
	/*var _dataCache = $angularCacheFactory('dataCache', {
        maxAge: 3600000 // items expire after an hour
    });*/
    /**
     * @class RBAC.UserManagerService
     */
    return {
        test: function (input) {
            var output = 'UserManager';
            // do something with the data
            return output;
        }
    };
});