<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Activiti</title>

    <link rel="icon" type="image/ico" href="favicon.ico">

    <!-- build:css styles/common/3thparty.css -->
    <link href="styles/common/bootstrap.min.css" rel="stylesheet">
    <link href="libs/nvd3_1.1.15-beta/nvd3.min.css" rel="stylesheet">
    <link href="libs/bootstrap-daterangepicker_1.3.7/daterangepicker-bs3.css" rel="stylesheet">
    <!-- endbuild -->

    <!-- build:css styles/style.css -->
    <link href="styles/style-landing.css" rel="stylesheet">
    <!-- endbuild -->

    <!-- build:css styles/common/style.css -->
    <link href="styles/common/style.css" rel="stylesheet">
    <link href="styles/common/style-retina.css" rel="stylesheet">
    <!-- endbuild -->

</head>
<body ng-app="activitiLanding" ng-cloak>

    <div ng-if="!onLogin">

        <div class="navbar navbar-fixed-top navbar-inverse" role="navigation" id="main-nav">
            <div class="fixed-container">
                <div class="navbar-header">
                    <a ng-click="backToLanding()" class="landing-logo" ng-if="account != null && account != undefined">
                        <img ng-src="{{appResourceRoot}}images/activiti-logo.png">
                    </a>
                </div>
                <div class="pull-right">
                    <div class="dropdown btn-group btn-group-sm">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"> {{account.firstName}} {{account.lastName}}
                            <span class="glyphicon glyphicon-chevron-down" style="font-size: 10px" aria-hidden="true"></span>
                        </button>
                        <ul class="dropdown-menu pull-right">
                            <li><a ng-click="logout()" translate="GENERAL.ACTION.LOGOUT"></a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>

        <div class="alert-wrapper" ng-cloak>
            <div class="alert {{alerts.current.type}}" ng-show="alerts.current" ng-click="dismissAlert()">
                <span>{{alerts.current.message}}</span>
                <span class="badge" ng-show="alerts.queue.length">{{alerts.queue.length + 1}}</span>
            </div>
        </div>

        <div class="apps-wrapper clearfix" ng-view="" ng-cloak ng-style="{height: window.height + 'px'}">
        </div>

    </div>

    <div ng-if="onLogin">
        <div class="alert-wrapper" ng-cloak>
            <div class="alert {{alerts.current.type}}" ng-show="alerts.current" ng-click="dismissAlert()">
                <span>{{alerts.current.message}}</span>
                <span class="badge" ng-show="alerts.queue.length">{{alerts.queue.length + 1}}</span>
            </div>
        </div>
        <div ng-view="" ng-cloak ng-style="{height: window.height + 'px'}"></div>
    </div>

    <!--[if lt IE 9]>
    <div class="unsupported-browser">
        <p class="alert error">You are using an unsupported browser. Please upgrade your browser in order to use the editor.</p>
    </div>
    <![endif]-->

    <!--[if lt IE 9]>
    <script src="libs/es5-shim-15.3.4.5/es5-shim.js"></script>
    <script src="libs/json3_3.2.6/lib/json3.min.js"></script>
    <![endif]-->

    <!-- 3rd party libs -->
    <script src="libs/jquery_1.11.0/jquery.min.js"></script>
    <script src="libs/jquery-ui-1.10.3.custom.min.js"></script>

    <script src="libs/angular_1.3.13/angular.js"></script>
    <script src="libs/angular-animate_1.3.13/angular-animate.min.js"></script>
    <script src="libs/bootstrap_3.1.1/js/bootstrap.min.js"></script>
    <script src="libs/angular-resource_1.3.13/angular-resource.min.js"></script>
    <script src="libs/angular-cookies_1.3.13/angular-cookies.min.js"></script>
    <script src="libs/angular-sanitize_1.3.13/angular-sanitize.min.js"></script>
    <script src="libs/angular-route_1.3.13/angular-route.min.js"></script>
    <script src="libs/angular-translate_2.4.2/angular-translate.min.js"></script>
    <script src="libs/angular-translate-storage-cookie/angular-translate-storage-cookie.js"></script>
    <script src="libs/angular-translate-loader-static-files/angular-translate-loader-static-files.js"></script>
    <script src="libs/angular-strap_2.1.6/angular-strap.min.js"></script>
    <script src="libs/angular-strap_2.1.6/angular-strap.tpl.min.js"></script>
    <script src="libs/autofill-events_1.0.0/autofill-event.js"></script>

    <!-- Configuration -->
    <script src="scripts/app-cfg.js?v=2"></script>

    <!-- build:js scripts/scripts.js -->
    <script src="scripts/landing-app.js"></script>
    <script src="scripts/common/services/authentication-service.js"></script>
    <script src="scripts/common/services/related-content-service.js"></script>
    <script src="scripts/common/services/authentication-service.js"></script>
    <script src="scripts/common/services/runtime-app-definition-service.js"></script>
    <script src="scripts/common/directives.js"></script>
    <script src="scripts/common/providers-config.js"></script>
    <script src="scripts/controllers.js"></script>
    <script src="scripts/landing-controller.js"></script>

    <script src="scripts/common/controllers/about.js"></script>
    <!-- endbuild -->

    <!-- Integration extensions -->
    <script src="scripts/resource-loader.js?v=2" app="landing"></script>

</body>
</html>