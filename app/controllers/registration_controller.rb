class RegistrationController < ApplicationController
   def new
      @user = User.new
   end

   def create
      @user = User.new(user_params)
      if @user.save
         redirect_to '/movies'
      else
         redirect_to '/signup', notice: "Sign up to view movies and reviews."
      end
   end

private
def user_params
   params.require(:user).permit(:username, :password, :password_confirmation)
end


end