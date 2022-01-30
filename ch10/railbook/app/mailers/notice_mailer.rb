# 리스트 10-11 notice_mailer.rb

class NoticeMailer < ApplicationMailer
  layout 'mail'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  default from: 'webmaster@wings.msn.to',
          cc: 'CQW15204@nifty.com'
  def sendmail_confirm(user)
    @user = user
    attachments['seal.jpg'] =
      File.read(Rails.root.join('tmp/data/seal.jpg'))
    attachments.inline['wings.jpg'] =
      File.read(Rails.root.join('tmp/data/wings.jpg'))
    mail(to: user.email,
         subject: '사용자 등록 감사드립니다') do |format|
      format.text { render inline: 'HTML을 지원하는 클라이언트로 수신받아주세요' }
      format.html
    end
  end
end
