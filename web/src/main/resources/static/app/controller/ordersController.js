angular
    .module('delivery')
    .controller('ordersController', ['$scope', '$http', '$uibModal', function ($scope, $http, $uibModal) {
        $scope.orders = {
            inProgress: [],
            open: [],
            closed: []
        };

        $scope.retrieveInProgressOrders = () => {
            $http.get('/order/in-progress').then(response => {
                $scope.orders.inProgress = response.data;
            })
        };

        $scope.retrieveOpenOrders = () => {
            $http.get('/order/open').then(response => {
                $scope.orders.open = response.data;
            })
        };

        $scope.retrieveClosedOrders = () => {
            $http.get('/order/closed').then(response => {
                $scope.orders.closed = response.data;
            })
        };

        $scope.retrieveInProgressOrders();
        $scope.retrieveOpenOrders();
        $scope.retrieveClosedOrders();


        $scope.showOrderCreation = () => {
            const modalInstance = $uibModal.open({
                animation: true,
                templateUrl: '/app/views/order.creation.html',
                controller: 'addOrderController'
            });

            modalInstance.result.then(function (added) {
                if (added) {
                    $scope.retrieveOpenOrders();
                }
            });
        }

        $scope.addFeedback = () => {
            const modalInstance = $uibModal.open({
                animation: true,
                templateUrl: '/app/views/feedback.html',
                controller: 'addFeedbackController'
            });

            modalInstance.result.then(function (added) {
                if (added) {
                    $scope.retrieveClosedOrders();
                }
            });
        }
    }])
    .controller('addOrderController', ['$scope', '$http', '$uibModalInstance',
        function ($scope, $http, $uibModalInstance) {
            $scope.datePicker = {
                format: 'yyyy/MM/dd',
                options: {
                    formatYear: 'yyyy',
                    formatMonth: 'MMMM',
                    formatDay: 'dd',
                    maxDate: new Date(2016, 12, 31),
                    minDate: new Date(),
                    startingDay: 1,
                    showWeeks: false
                },
                open: () => {
                    $scope.datePicker.opened = true;
                }
            };

            $scope.findLocations = val => {
                return $http.get('location/?city=' + val).then(response => response.data);
            };

            $scope.form = {
                submit: () => {
                    const data = {
                        cityIdFrom: $scope.form.locationFrom.cityId,
                        cityIdTo: $scope.form.locationTo.cityId,
                        arrivalDate: $scope.form.arrivalDate,
                        height: $scope.form.height,
                        width: $scope.form.width,
                        length: $scope.form.length,
                        weight: $scope.form.weight,
                        description: $scope.form.description
                    };
                    $http.post('/order', data).then(response => {
                        $uibModalInstance.close(true)
                    }, response => {
                        alert('failed to add order')
                    });
                }
            };

            $scope.cancel = function () {
                $uibModalInstance.dismiss('cancel');
            };


        }]
    )
    .controller('addFeedbackController', ['$scope', '$http', '$uibModalInstance',
        function ($scope, $http, $uibModalInstance) {
            $scope.form = {
                submit: () => {
                    const data = {
                        rate: $scope.form.rate,
                        text: $scope.form.text
                    };
                    $http.post('/order', data).then(response => {
                        $uibModalInstance.close(true)
                    }, response => {
                        alert('failed to add feedback')
                    });
                }
            };

            $scope.cancel = function () {
                $uibModalInstance.dismiss('cancel');
            };
        }]);
;
