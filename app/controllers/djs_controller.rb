class DjsController < ApplicationController
  before_action :set_dj, only: [:show, :edit, :update, :destroy]
  before_action :check_dj_presence, only: [:new, :create]
  before_action :check_host_presence, only: [:new, :create]

  # GET /djs
  # GET /djs.json
  def index
    @djs = Dj.all
  end

  # GET /djs/1
  # GET /djs/1.json
  def show
  end

  # GET /djs/new
  def new
    @dj = Dj.new
  end

  # GET /djs/1/edit
  def edit
  end

  # POST /djs
  # POST /djs.json
  def create
    @dj = Dj.new(dj_params)
    @dj.user_id = current_user.id

    respond_to do |format|
      if @dj.save
        format.html { redirect_to @dj, notice: 'Dj was successfully created.' }
        format.json { render :show, status: :created, location: @dj }
      else
        format.html { render :new }
        format.json { render json: @dj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /djs/1
  # PATCH/PUT /djs/1.json
  def update
    respond_to do |format|
      if @dj.update(dj_params)
        format.html { redirect_to @dj, notice: 'Dj was successfully updated.' }
        format.json { render :show, status: :ok, location: @dj }
      else
        format.html { render :edit }
        format.json { render json: @dj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /djs/1
  # DELETE /djs/1.json
  def destroy
    @dj.destroy
    respond_to do |format|
      format.html { redirect_to djs_url, notice: 'Dj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dj
      @dj = Dj.find(params[:id])
    end

    def check_dj_presence
    redirect_to root_path if current_user.dj
    end

    def check_host_presence
    redirect_to root_path if current_user.host
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dj_params
      params.require(:dj).permit(:name, :description, :location, :portfolio, :rate, :image, :dj_check, :user_id)
    end
end
