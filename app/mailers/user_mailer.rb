class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  # def password_reset
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.connect.subject
  #
  def connect(user)
    @user = user
    mail to: user.email, subject: 'Welcome to Contigo!'
  end

  def find_share(user, current_user)
    @user = user 
    @current_user = current_user
    mail to: user.email, subject: 'Let\'s share a ride!'

  end

end
