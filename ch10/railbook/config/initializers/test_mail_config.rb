# 리스트 10-13 test_mail_config.rb

if !Rails.env.production?
  ActionMailer::Base.register_interceptor(TestMailtoInterceptor)
end
