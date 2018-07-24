class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_dj, only: [:new, :create, :edit, :show, :update, :destroy, :index]
  before_action :check_dj_presence, only: [:new, :create]
  before_action :only_host_can_edit_review, only: [:edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    # @reviews = Review.all
    @reviews = Review.where("dj_id=?", params[:dj_id])
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    if Review.where("host_id = ? AND dj_id = ?", current_user.host.id, @dj.id).exists?
        redirect_to djs_path
        flash[:notice] = "You're only allowed to review once"
    else
        @review = Review.new
    end
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    # @review = Review.new
    # @review.host_id = current_user.host.id
    # @review.dj_id = @dj.id
    @review = Review.new(review_params)
    @review.host_id = current_user.host.id
    @review.dj_id = @dj.id


    respond_to do |format|
      if @review.save
        format.html { redirect_to  dj_reviews_path, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to dj_reviews_path, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to dj_reviews_path, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    def set_dj
      @dj = Dj.find(params[:dj_id])
    end

    def check_dj_presence
      if current_user.dj
        flash[:notice] = "DJ user detected, only host can make reviews"
        redirect_to djs_path
      end
    end

    def only_host_can_edit_review
      if @review.host_id != current_user.host.id
        flash[:notice] = "You are only allowed to make changes to your own reviews"
        redirect_to dj_reviews_path(@dj)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:rating, :comment)
    end
end
