class SessionsController < ApplicationController
  include SessionsHelper
  
  def new
  end

  def create
  	user = User.find_by(name: params[:session][:name].downcase)
  	if user && user.authenticate(params[:session][:password])
  		log_in user
      puts "Logged in!!"
  		redirect_to user
  	else
      puts 'Failed login'
  		flash.now[:danger] = "Invalid email/password combination"
  		render 'new'
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end
end
