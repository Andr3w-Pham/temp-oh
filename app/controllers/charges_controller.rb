class ChargesController < ApplicationController
  before_action :set_dj, only: [:new, :show, :edit, :update, :destroy]
  def page
    @dj = dj.find(params[:dj_id])
  end

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
      description: 'Your Receipt',
      receipt_email: 'andrew.webdev09@gmail.com',
      currency: 'AUD'
    )
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dj
      @dj = dj.find(params[:id])
    end

    def dj_params
      params.require(:dj).permit(:name, :description, :location, :portfolio, :rate, :image, :audio, :user_id)
    end
end
