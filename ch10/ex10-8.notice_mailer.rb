# 리스트 10-8 notice_mailer.rb

class NoticeMailer < ApplicationMailer

  def sendmail_confirm(user)
    @user = user
    attachments['seal.jpg'] =
      File.read(Rails.root.join('tmp/data/seal.jpg'))
    # ...생략...
  end
  
end
