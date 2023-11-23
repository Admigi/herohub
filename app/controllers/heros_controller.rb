class HerosController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    per_page = 12
    @page_number = (params[:page] || 1).to_i
    offset = (@page_number - 1) * per_page
    if params[:search].present?
      search_term = params[:search].downcase
      @heros = Hero.where("LOWER(name) LIKE ?", "%#{search_term}%")
                   .limit(per_page)
                   .offset(offset)
    else
      @heros = Hero.limit(per_page).offset(offset)
    end

    # Filters
    case params[:price_range]
    when "$"
      @heros = @heros.where(price: 1..499)
    when "$$"
      @heros = @heros.where(price: 500..999)
    when "$$$"
      @heros = @heros.where(price: 1000..Float::INFINITY)
    end

    # City Filter
    @heros = @heros.where(city: params[:city_filter]) if params[:city_filter].present?

    @total_pages = (Hero.count.to_f / per_page).ceil
  end

  def show
    @hero = Hero.find(params[:id])
    @booking = Booking.new
  end

  def new
    @hero = Hero.new
  end

  def create
    @user = current_user
    @hero = Hero.new(hero_params)
    @hero.user = @user
    if @hero.save
      redirect_to hero_path(@hero)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @hero = Hero.find(params[:id])
  end

  def update
    @hero = Hero.find(params[:id])
    @hero.update(hero_params)
    redirect_to hero_path(@hero)
  end

  def destroy
    @hero = Hero.find(params[:id])
    @hero.destroy
    redirect_to heros_path, status: :see_other
  end

  private

  def hero_params
    params.require(:hero).permit(:name, :description, :power, :city, :price)
  end

  def city_options
    Hero.distinct.pluck(:city)
  end
end