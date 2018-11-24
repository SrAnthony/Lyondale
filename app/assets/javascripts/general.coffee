# === Destroi instâncias do datatable antes de fazer o cache
$(document).on 'turbolinks:before-cache', ->
  dataTable = $($.fn.dataTable.tables(true)).DataTable()
  if (dataTable != null)
    dataTable.destroy();
    dataTable = null;

# === Toda vez que uma página carrega
$(document).on 'turbolinks:load', ->
  # === Ativa todos os dropdowns
  $('.ui.dropdown').dropdown()

  # === Ativa todos os accordions
  $('.ui.accordion').accordion()

  # === Ativa todos os datepickers
  $('.air-datepicker').datepicker({language: 'pt-BR'})

  # === Ativa todos os lightboxes
  $('.lightbox').simpleLightbox()

  # === Ativa todos os datatables e seus inputs de pesquisa
  $('table[data-table]').each ->
    table_name = this.dataset.table
    table = $(this).DataTable {
      language: datatable_language,
      lengthChange: false,
      dom:  "<'ui stackable grid'" +
              "<'row dt-table'" +
                "<'sixteen wide column'tr>"+
              ">" +
              "<'row'" +
                "<'seven wide column'i>" +
                "<'right aligned nine wide column'p>" +
              ">" +
            ">"
    }

    $("input[data-table='#{table_name}']").keyup ->
      table.search($(this).val()).draw()

# === Tradução do datatable para português
datatable_language = {
  "sEmptyTable": "Nenhum registro encontrado",
  "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
  "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
  "sInfoFiltered": "(Filtrados de _MAX_ registros)",
  "sInfoPostFix": "",
  "sInfoThousands": ".",
  "sLengthMenu": "_MENU_ resultados por página",
  "sLoadingRecords": "Carregando...",
  "sProcessing": "Processando...",
  "sZeroRecords": "Nenhum registro encontrado",
  "sSearch": "Pesquisar",
  "oPaginate": {
      "sNext": "Próximo",
      "sPrevious": "Anterior",
      "sFirst": "Primeiro",
      "sLast": "Último"
  },
  "oAria": {
      "sSortAscending": ": Ordenar colunas de forma ascendente",
      "sSortDescending": ": Ordenar colunas de forma descendente"
  }
}
