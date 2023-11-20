class HeroesController < ApplicationController
  def index
    @heroes = Hero.all
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero
  end
end
