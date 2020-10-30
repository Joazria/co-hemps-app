class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update]

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.cohemp_id = params[:cohemp_id]

    if @booking.save
      redirect_to profile_path, notice: 'A new Booking was successfully created.'
    else
      render 'cohemps/show'
    end
  end

  def new
    @booking = Booking.new
  end

  #def edit ---> na pagina do profile
 # end

  def update
    if @booking.update(booking_params)
      redirect_to profile_path, notice: 'Your Booking was successfully updated.'
    else
    #  render :edit
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :status)
  end
end
