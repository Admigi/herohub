class HerosController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @heros = Hero.all
  end

  def show
    @hero = Hero.find(params[:id])
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
end
