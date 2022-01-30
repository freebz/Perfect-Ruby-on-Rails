# 리스트 9-16 ajax.js.coffee

init = ->
  # Ajax 통신에 성공했을 때 실행
  $('#ajax_form').on 'ajax:success', (e, data) ->
    # 요소 내부를 비웁니다.
    $('#result').empty()
    # 추출한 데이터로 <li> 요소를 생성
    $.each data, ->
      $('#result').append(
        $('<li></li>').append(
          $('<a></a>').attr('href', 'http://www.wings.msn.to/index.php/-/A-03/' + @isbn).append(@title)
        )
      )

# 페이지 로드 시에 init 함수를 실행
$(document).ready(init)
$(document).on('page:change', init)
