class ReviewsController < ApplicationController
   before_action :authenticate

   def index
      @reviews = Review.all
   end

   def new
      @review = Review.new
   end

   def create
      @review = Review.new(review_params)
      if @review.save
         redirect_to reviews_path, notice: "You've successfully created a review!"
      else
         render :new
      end
   end


   private
   def review_params
      params.require(:review).permit(:movie_id, :user_id, :title, :body)
   end

   
end
