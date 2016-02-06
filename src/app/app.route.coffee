angular.module 'app'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'root',
        url: ''
        abstract: true
        views:
          'header':
            templateUrl: 'app/layout/navbar.html'
          'footer':
            templateUrl: 'app/layout/footer.html'

      .state 'root.really',
        url: '/'
        views:
          'container@':
            templateUrl: 'app/home/home.html'
            controller: 'HomeCtrl'
            controllerAs: 'vm'

      .state 'root.income',
        url: '/income'
        views:
          'container@':
            templateUrl: 'app/calculator/income.html'
            controller: 'IncomeCtrl'
            controllerAs: 'vm'
      .state 'root.pph',
        url: '/pph'
        views:
          'container@':
            templateUrl: 'app/calculator/pph.html'
            controller: 'PricePerHourCtrl'
            controllerAs: 'vm'

    $urlRouterProvider.otherwise '/'
