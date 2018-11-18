$(document).on 'turbolinks:load', ->
  # === Ativa niceScroll
  # $('body.application').niceScroll({horizrailenabled: false})
  # $('body.application').getNiceScroll().resize()

  # === Ativa todos os dropdowns da página
  $('.ui.dropdown').dropdown()

  # === Ativa todos os accordions da página
  $('.ui.accordion').accordion()

  # === Ativa todos os datepickers da página
  $('.air-datepicker').datepicker({language: 'pt-BR'})
