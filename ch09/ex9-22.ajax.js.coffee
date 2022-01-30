# 리스트 9-22 ajax.js.coffee

init = ->
  $('#slide_search').on 'ajax:success', (e, data) ->
    $('#result').append(
      $('<li></li>').append(
        $('<a></a>').attr('href', @URL).append("#{@Title}(#{@Description})")
      )
    )
# ...생략...
# 페이지 로드 시에 init 함수를 실행
$(document).ready(init)
$(document).on('page:change', init)
