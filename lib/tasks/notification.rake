namespace :notification do
  #なんの目的かを記入
  desc '利用者にメールする'

  task :send_emails_from_admin, ['msg'] => :environment do |task, args|
    msg = args['msg']
    if msg.present?
      NotificationFromAdminJob.perform_later(msg)
    else
      puts '送信できませんでした'
    end
  end
end