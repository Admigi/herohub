class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @hero = Hero.find(params[:hero_id])
    @booking = Booking.new
  end

  def create
    @hero = Hero.find(params[:hero_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.hero = @hero
    if @booking.save
      redirect_to user_path(@hero.user)
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
