class CohempsController < ApplicationController
  before_action :set_cohemp, only: [:show, :edit, :update, :destroy]

  def index
    @cohemps = Cohemp.all

     @markers = @cohemps.geocoded.map do |cohemp|
      {
        lat: cohemp.latitude,
        lng: cohemp.longitude
      }
    end
  end

  def show
    @booking = Booking.new

    @markers = [{ lat: @cohemp.latitude, lng: @cohemp.longitude }]
  end

  def new
    @cohemp = Cohemp.new
  end

  def edit
  end

  def create
    @cohemp = Cohemp.new(cohemp_params)
    @cohemp.user = current_user
    if @cohemp.save
      redirect_to @cohemp, notice: "A new Co-Hemp was successfully created."
    else
      render :new
    end
  end

  def update
    if @cohemp.update(cohemp_params)
      redirect_to @cohemp, notice: "The Co-Hemp was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @cohemp.destroy
    redirect_to root_path, notice: "The Co-Hemp was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cohemp
    @cohemp = Cohemp.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def cohemp_params
    params.require(:cohemp).permit(:description, :address, :availability, :name)
  end
end
