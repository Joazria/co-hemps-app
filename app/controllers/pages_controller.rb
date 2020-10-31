class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @cohemps = Cohemp.all
    @markers = @cohemps.geocoded.map do |cohemp|  {
      lat: cohemp.latitude,
      lng: cohemp.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { cohemp: cohemp })
    }
    end

  end

  def profile
    @cohemps = Cohemp.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @user = current_user
  end
end
