# 리스트 10-2 notice_mailer.rb

class NoticeMailer < ActionMailer::Base
  # ...생략...
  default from: 'webmaster@wings.msn.to',
          cc: 'CQW15204@nifty.com'
  def sendmail_confirm(user)
    @user = user
    mail(to: user.email,
         subject: '사용자 등록 감사드립니다')
  end
end
