class ApplicationMailer < ActionMailer::Base
  default to: "thebenhodges@gmail.com",from: 'Ben@panpal.com'
  layout 'mailer'
end
