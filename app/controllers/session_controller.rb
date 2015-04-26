class SessionController < ApplicationController


   def new
   end

   def create
      @user = User.find(params[:username])
      if user && user.authenticate(params[:password])
         session[:user_id] = @user.id
         redirect_to movies_path
      else
         render '/signin'
      end
   end


   def destroy
      session.destroy
      session[:user_id] = nil
      redirect_to '/signin', notice: "You are now logged out."
   end

   
end
