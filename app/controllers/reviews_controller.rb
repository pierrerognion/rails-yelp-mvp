class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to reviews_path
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @reviews = Review.find(params[:id])
    @reviews.update(review_params)
    redirect_to reviews_path
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end

  private

  def review_params
    params.require(:review).permit(:name, :category)
  end
end
