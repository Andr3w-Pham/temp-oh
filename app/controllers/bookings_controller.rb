class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :set_dj, only: [:new, :create, :edit, :show, :update, :destroy, :index]

  before_action :check_dj_presence, only: [:new, :create]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
    # @bookings = Booking.where("dj_id=?", params[:dj_id])
  end

  def my_bookings
    @bookings = Booking.where("dj_id=?", params[:dj_id])
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new
    logger.debug('2222222222222')
    logger.debug(current_user.host)
    @booking.host_id = current_user.host.id

    @booking.dj_id = @dj.id

    respond_to do |format|
      if @booking.save
        format.html { redirect_to new_charge_path(:dj_id => @dj.id), notice: 'Booking was successfully created.' }
        # redirect_to charges_page_path(dj_id: @dj.id)
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to dj_booking_path(@dj, @booking), notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to dj_bookings_path, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def check_dj_presence
    if current_user.dj
      flash[:notice] = "DJ user detected, only hosts are able to make bookings"
      redirect_to root_path
    end
  end

  def set_dj
    @dj = Dj.find(params[:dj_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def booking_params
    params.require(:booking).permit(:host_id, :dj_id, :address, :date, :time)
  end
end
