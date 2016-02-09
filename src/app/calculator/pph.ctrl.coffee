PricePerHourCtrl = ($log) ->
  'ngInject'
  vm = this

  vm.total = 0

  vm.calculate =
    pph: (income) ->

      month = new Date().getMonth()
      year = new Date().getFullYear()

      vm.total = income / vm.getWeekdaysInMonth( month, year )


  vm.getWeekdaysInMonth = (month, year) ->
    daysInMonth = (iMonth, iYear) ->
      return 32 - new Date(iYear, iMonth, 32).getDate()


    isWeekday = (iDay, iMonth, iYear) ->
      newday = new Date(iYear, iMonth, iDay).getDay()
      newday != 0 && newday != 6

    days = daysInMonth(month, year)
    weekdays = 0
    i = 0
    while i < days
      if isWeekday(i + 1, month, year)
        weekdays++
      i++
    weekdays


  return

angular.module 'app.calculator'
  .controller 'PricePerHourCtrl', PricePerHourCtrl
