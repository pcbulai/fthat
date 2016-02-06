TimeCalc = () ->
  sv:
    businessDays: businessDays
    decimalMinutes: decimalMinutes
    decimalTime: decimalTime

  return sv

  getWeekdaysInMonth = (month, year) ->
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

  decimalMinutes = () ->


  decimalTime = (time) ->
    vm.hours + (((10 * vm.minutes) / 6) / 100)



angular.module 'app'
  .service 'TimeCalc', TimeCalc
