# 리스트 10-9 notice_mailer.rb

class NoticeMailer < ApplicationMailer

  def sendmail_confirm(user)
    @user = user
    attachments.inline['wings.jpg'] =
      File.read(Rails.root.join('tmp/data/wings.jpg'))
    mail(to: user.email,
         subject: '사용자 등록 감사드립니다')
  end
end
