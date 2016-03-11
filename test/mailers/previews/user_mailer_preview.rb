# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/password_reset
  def password_reset
    UserMailer.password_reset
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/connect
  def connect
    UserMailer.connect
  end

end
