class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_booking.subject
  #
  def new_booking(email)
    @email = email
    mail to: @email, subject: "Your Booking"
  end

  def create
    ModelMailer.new_booking(@email).deliver_now
  end
end
