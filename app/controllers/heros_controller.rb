class HerosController < ApplicationController
  def index
    @heros = Hero.all
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero
  end
end
