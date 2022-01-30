# 리스트 9-22 ajax.js.coffee

init = ->
  $(document).ajaxStart ->
    $('#progress').html '통신 중...'
  .ajaxComplete ->
    $('#progress').html ''
  
  # Ajax 통신에 성공했을 때 실행
  $('#ajax_form').on 'ajax:success', (e, data) ->
    data = e.detail[0]
    # 요소 내부를 비웁니다.
    $('#result').empty()
    # 추출한 데이터로 <li> 요소를 생성
    $.each data, ->
      $('#result').append(
        $('<li></li>').append(
          $('<a></a>').attr('href', 'http://www.wings.msn.to/index.php/-/A-03/' + @isbn).append(@title)
        )
      )

  # Ajax 통신에 성공했을 때 실행
  $('#slide_search').on 'ajax:success', (e, data) ->
    $('#result').append(
      $('<li></li>').append(
        $('<a></a>').attr('href', @URL).append("#{@Title}(#{@Description})")
      )
    )

# 페이지 로드 시에 init 함수를 실행
$(document).ready(init)
$(document).on('page:change', init)
