class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @bookings = Booking.where(user_id: current_user.id)
    @bookings_as_owner = Booking.joins(:hero).where(heros: { user_id: current_user.id })
  end
end
