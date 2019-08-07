class ReviewsController < ApplicationController

   def create
     @review = Review.new(review_params)
     @resto = Restaurant.find(params[:restaurant_id])
     # Trouver le bon restau
     @review.restaurant = @resto
     @review.save

     # Associer le restau a la review
     redirect_to restaurant_path(@review.restaurant)
   end

   def new
     @restaurant = Restaurant.find(params[:restaurant_id])
     @review = Review.new
   end
end

def review_params
    params.require(:review).permit(:content, :rating)
  end
