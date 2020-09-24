class NotificationFromAdminMailer < ApplicationMailer
  def notify(user, msg)
    mail to: user.email, subject: 'お知らせ'
  end
end