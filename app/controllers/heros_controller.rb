class HerosController < ApplicationController
<<<<<<<<< Temporary merge branch 1

=========
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @heros = Hero.all
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
