class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @hero = Hero.find(params[:hero_id])
    @review = @hero.reviews.new(review_params)
    @review.user = current_user

    if @review.save
      redirect_to hero_path(@hero), notice: 'Review created successfully.'
    else
      render 'heros/show' # Render the hero's show page with errors
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :review_text, :user_id)
  end
end
