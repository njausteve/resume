/**
 * (C) njausteve, 2017
 *  Resume
 * by Stephen njau(njaustevedomino@gmail.com)
 */
(function () {
    'use strict';

    angular
        .module('njausteve')
        .run(runBlock)

    /** @ngInject */
    function runBlock($log, $rootScope, $state) {


        $log.info("Njausteve , 2017 \n Online Resume \n lets do this! ");
        $rootScope.$state = $state;
    }

})();