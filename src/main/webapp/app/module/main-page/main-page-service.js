/**
 * define RBAC.MainPageService 
 */

rbacApp.service('RBAC.MainPageService',function($http, $q){
	/*var _dataCache = $angularCacheFactory('dataCache', {
        maxAge: 3600000 // items expire after an hour
    });*/
    /**
     * @class RBAC.MainPageService
     */
    return {
        test: function (input) {
            var output = 'test function called';
            // do something with the data
            return output;
        }
    };
});