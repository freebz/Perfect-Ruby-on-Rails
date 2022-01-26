# 리스트 7-4 TimeConstraint.rb

class TimeConstraint
  def matches?(request)
    current = Time.now
    current.hour >= 9 && current.hour < 18
  end
end
