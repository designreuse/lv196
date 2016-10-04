angular
    .module('delivery', ['ui.router', 'ui.bootstrap'])
    .config(['$stateProvider', '$urlRouterProvider', function ($stateProvider, $urlRouterProvider) {
        $urlRouterProvider.otherwise('/orders/in-progress');

        $stateProvider
            .state('profile', {
                url: '/profile',
                templateUrl: '/app/views/profile.html'
            })
            .state('orders', {
                url: '/orders',
                templateUrl: '/app/views/orders/orders.html',
                controller: 'ordersController'
            })
            .state('orders.inProgress', {
                url: '/in-progress',
                templateUrl: '/app/views/orders/orders.in-progress.html',
                controller: 'ordersInProgressController'
            })
            .state('orders.open', {
                url: '/open',
                templateUrl: '/app/views/orders/orders.open.html',
                controller: 'ordersOpenController'
            })
            .state('orders.closed', {
                url: '/closed',
                templateUrl: '/app/views/orders/orders.closed.html',
                controller: 'ordersClosedController'
            })
            .state('feedback', {
                url: '/feedback',
                templateUrl: '/app/views/feedback.html'
            })
            .state('users', {
                url: '/users',
                templateUrl: '/app/views/users.html',
                controller: 'userController'
            });
    }]);