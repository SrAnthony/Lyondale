$(document).on 'turbolinks:load', ->
  # === Ativa niceScroll
  $('body').niceScroll()

  # === Ativa todos os dropdowns da página
  $('.ui.dropdown').dropdown()
