class SessionsController < ApplicationController
 def new 
 end
 def create
   session_user = params[ :session]
   #find the user by email
   user = User.find_by_email(session_user[:email])
   check if the password is correct 
   if user and user.authenticate(session_user[:password])
     session[:user_id] = user.id
     redirect_to root_url, notice: "looged in sucessfully."
   else
     redirect_to login_url, notice:"invalid login information"
   end
   
 end
 def destroy
   session[:user_id]= nil
   @current_user =nil
   redirect_to root_url, notice: "Logged out."
 end 	
end
