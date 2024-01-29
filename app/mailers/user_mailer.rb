class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    #@greeting = "Hi"
    #mail to: "to@example.org"
    @user = user
    #mail to: user.email, subject: "Account activation"
    @activation_link = edit_account_activation_url(@user.activation_token, email: @user.email)
    Rails.logger.info "Activation link: #{@activation_link}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
