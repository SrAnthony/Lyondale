// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks

// === Custom ===
//= require jquery
//= require semantic-ui
//= require toastr/build/toastr.min
//= require air-datepicker/dist/js/datepicker.min
//= require air-datepicker/dist/js/i18n/datepicker.pt-BR
//= require sweetalert2/dist/sweetalert2.all.min
//= require sweet-alert-confirm
//= require simplelightbox/dist/simple-lightbox.min
//= require datatables.net/js/jquery.dataTables.min
//= require datatables.net-se/js/dataTables.semanticui.min

//= require_tree .

var sweetAlertConfirmConfig = {
  title: 'Você tem certeza?',
  type: 'warning',
  showCancelButton: true,
  confirmButtonColor: '#DD6B55',
  confirmButtonText: 'Deletar',
  cancelButtonText: 'Cancelar'
};
