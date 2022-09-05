class UsersController < ApplicationController
	protect_from_forgery except: [:update]
	before_action :redirect_if_authenticated, only: [:create, :new]
	
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path, notice: "Signup successful."
		else
			render :new, status: :unprocessable_entity
		end
	end

	def new
		@user = User.new
	end

	def edit
		@user = User.find(session[:current_user_id])
		@addresses = Address.order('created_at DESC')
	end

	def update
		@user = User.find(session[:current_user_id])
    	if @user.update(user_params)
			redirect_to profile_path, notice: "Profile updated."
		else
			render :edit, status: :unprocessable_entity
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end
