# 리스트 8-4 view_helper_test.rb

require 'test_helper'

class ViewHelperTest < ActionView::TestCase
  test "format helper" do
    result = format_datetime(Time.now, :date)
    assert_match /\d{4}년 \d{1,2}월 \d{1,2}일/, result
  end
end
