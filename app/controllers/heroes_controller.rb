class HeroesController < ApplicationController
  def index
    @heroes = Hero.all
  end

  def show
    @hero = Hero.find(params[:user_id])
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero
  end
end
