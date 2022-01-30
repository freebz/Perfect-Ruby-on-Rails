# 리스트 10-12 test_mailto_interceptor.rb

class TestMailtoInterceptor
  def self.delivering_email(mail)
    mail.to = [ 'tester@wings.msn.to' ]
  end
end
