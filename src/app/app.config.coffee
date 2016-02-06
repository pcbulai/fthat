angular.module 'app'
  .config ($logProvider, toastrConfig) ->
    'ngInject'
    # Enable log
    $logProvider.debugEnabled true
