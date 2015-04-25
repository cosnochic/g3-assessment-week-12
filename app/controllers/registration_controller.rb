class RegistrationController < ApplicationController
   def new
      @user = User.new
   end

   def create
      @user = User.new(user_params)
      if @user.save
         redirect_to '/movies'
      else
         redirect_to '/signup', notice: "You must be signed in."
      end
   end
   
end
