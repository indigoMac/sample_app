class ApplicationMailer < ActionMailer::Base
  default from: "postmaster@mysterious-ridge.com"
  layout "mailer"
end
