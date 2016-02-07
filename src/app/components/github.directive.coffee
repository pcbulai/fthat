angular.module 'app'
  .directive 'github', ->

    GithubCtrl = () ->
      vm = this
      # "vm.creation" is avaible by directive option "bindToController: true"
      console.log vm.project
      vm.url = '//github.com/' + vm.project
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/github.html'
      scope: project: '@'
      controller: GithubCtrl
      controllerAs: 'vm'
      bindToController: true
