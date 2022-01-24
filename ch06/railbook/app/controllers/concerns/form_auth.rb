# 리스트 6-57 form_auth.rb

module FormAuth
  extend ActiveSupport::Concern

  included do
    before_filter :check_logined
  end

  private
  def check_logined
    # ...생략...
  end
end
