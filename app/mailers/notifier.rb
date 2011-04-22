class Notifier < ActionMailer::Base
  default :from => "notifier@example.com"

  def welcome_email(email)
    mail(:to => email, :subject => 'Welcome to Reminders!')
  end
end
