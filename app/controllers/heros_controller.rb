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
    @hero
  end
end
