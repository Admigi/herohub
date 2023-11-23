class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @bookings = @user.bookings
    @heros = @user.heros

    if current_user
      @heros = current_user.heros
    else
      @heros = [] 
    end
  end
end
