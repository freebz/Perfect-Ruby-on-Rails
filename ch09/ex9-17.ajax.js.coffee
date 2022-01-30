# 리스트 9-17 ajax.js.coffee

init = ->
  $(document).ajaxStart ->
    $('#progress').html '통신 중...'
  .ajaxComplete ->
    $('#progress').html ''
