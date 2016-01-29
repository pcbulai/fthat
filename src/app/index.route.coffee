angular.module 'fthat'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'root',
        url: ''
        abstract: true
        views:
          'header':
            templateUrl: 'app/layout/header.html'
          'footer':
            templateUrl: 'app/layout/footer.html'

      .state 'root.home',
        url: '/'
        views:
          'container@':
            templateUrl: 'app/main/main.html'
            controller: 'MainController'
            controllerAs: 'vm'

    $urlRouterProvider.otherwise '/'
