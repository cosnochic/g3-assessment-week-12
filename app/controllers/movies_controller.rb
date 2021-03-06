class MoviesController < ApplicationController
   before_action :authenticate

   def index
      @movies = Movie.all.order(year: :desc)
   end

   def new
      @movie = Movie.new
   end

   def create
      @movie = Movie.new(movie_params)
      if @movie.save
         redirect_to movies_path, notice: "You've successfully created a new movie!"
      else
         render :new
      end
   end



   private
   def movie_params
      params.require(:movie).permit(:name, :year, :synopsis)
   end


end
