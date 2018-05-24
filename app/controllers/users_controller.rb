class UsersController < ApplicationController
	include SessionsHelper 

	before_action :require_login

	def show
		@user = User.find(1)
		@posts = Post.all
		# @user = User.find(current_user.id)
	end

	private 

	def require_login
      unless logged_in?
        redirect_to login_path
      end
    end 
end
