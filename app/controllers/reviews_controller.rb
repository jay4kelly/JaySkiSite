class ReviewsController < ApplicationController
def index
  @reviews = Review.all
end
def show
   @review = Review.find(params[:id])
end
def make_reviews
  @review = Review.find(params[:id])
  @reviews = Review.all
end
  def new
  end
  def create
   @review = Review.new(review_params)
    @review.save
    redirect_to review_path(@review)
  end
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to review_path
  end
  private
  def review_params
params.require(:review).permit(:title,:text, :mountain_id)
end
end
