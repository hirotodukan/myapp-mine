class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to root_path
  end

  private
  def review_params
    params.require(:review).permit(:title, :image, :genre, :comment).merge(user_id: current_user.id)
  end
end
