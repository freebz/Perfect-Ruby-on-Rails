# 리스트 10-4 development.rb

require "active_support/core_ext/integer/time"

Rails.application.configure do
  
  config.action_mailer.default_url_options = {
    host: 'www.example.com'
  }
    
end
