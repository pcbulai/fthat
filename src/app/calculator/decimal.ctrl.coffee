DecimalCtrl = ($log) ->
  'ngInject'

  vm = this

  vm.total = 0
  vm.error = ''

  vm.decimal = (mins) ->
    if mins < 0
      vm.error = 'Not cool bro!'

    else if mins > 60
      vm.error = 'Nope, not on this planet'

    else
      vm.total = (10 * mins) / 6
      vm.error = ''

    true

  true

angular.module 'app.calculator'
  .controller 'DecimalCtrl', DecimalCtrl
