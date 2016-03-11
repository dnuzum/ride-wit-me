class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.connect.subject
  #
  def connect
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  def greeting_at_registration
    @greeting = 'Hi'

    mail to: 'to@example.org'
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: 'Password Reset'
  end

end
