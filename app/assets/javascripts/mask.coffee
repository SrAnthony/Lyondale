$(document).on 'turbolinks:load', ->
  $('.air-datepicker').mask '00/00/0000'
  $('.money-mask').mask '000.000.000.000.000,00', { reverse: true }
  $('.cpf-mask').mask '000.000.000-00', { reverse: true }
  $('.phone-mask').mask '(00) 00000-0000'
