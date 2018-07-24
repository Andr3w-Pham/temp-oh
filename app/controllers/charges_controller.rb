class ChargesController < ApplicationController
  before_action :set_dj, only: [:new, :show, :edit, :update, :destroy]
  def new
    @amount = @dj.rate
  end

  def create
    # Amount in cents
    @amount = params[:rate].to_i * 100

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Your Booking',
      receipt_email: 'test@gmail.com',
      currency: 'AUD'
    )
    @email = customer.email
    ModelMailer.new_booking(@email).deliver_now
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_dj
    @dj = Dj.find(params[:dj_id])
  end


  def dj_params
    params.require(:dj).permit(:name, :description, :location, :rate, :image, :user_id)
  end
end
