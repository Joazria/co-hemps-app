class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @cohemps = Cohemp.all
  end

  def profile
    @cohemps = Cohemp.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @user = current_user
  end
end
