class ApplicationMailer < ActionMailer::Base
  default to: "client@gmail.com",from: 'Ben@panpal.com'
  layout 'mailer'
end
