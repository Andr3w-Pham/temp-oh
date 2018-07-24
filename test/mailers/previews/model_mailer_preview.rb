# Preview all emails at http://localhost:3000/rails/mailers/model_mailer
class ModelMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/model_mailer/new_booking
  def new_booking
    booking = Booking.last
    ModelMailer.new_booking(booking)
  end

end
