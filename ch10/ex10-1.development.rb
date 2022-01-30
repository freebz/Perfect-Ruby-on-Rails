# 리스트 10-1 development.rb

require "active_support/core_ext/integer/time"

Rails.application.configure do
  # ...생략...
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
    address: 'smtp.examples.com',
    port: 587,
    user_name: 'hogehoge',
    password: 'secret',
    domain: 'examples.com'
  }
  # ...생략...  
end
