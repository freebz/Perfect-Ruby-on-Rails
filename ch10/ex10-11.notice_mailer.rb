# 리스트 10-11 notice_mailer.rb

class NoticeMailer < ActionMailer::Base
  layout 'mail'
  # ...생략...
  def sendmail_confirm(user)
    @user = user
    mail(to: user.email,
         subject: '사용자 등록 감사드립니다') do |format|
      format.text { render inline: 'HTML을 지원하는 클라이언트로 수신받아주세요' }
      format.html
    end
  end
end
