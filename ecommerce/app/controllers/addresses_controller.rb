class AddressesController < ApplicationController
	protect_from_forgery except: [:create]
	before_action :login_if_not_authenticated

	def index
		@addresses = Address.order('created_at DESC')
	end

	def create
		@address = Address.new(address_params)
		if @address.save
			redirect_to profile_path, notice: "Address added."
		else
			render :new, status: :unprocessable_entity
		end
	end

	def new
		@address = Address.new
	end

	def edit
		@address = Address.find(params[:id])
	end

	def update
		@address = Address.find(params[:id])
    if @address.update(address_params)
			redirect_to profile_path, notice: "Address updated."
		else
			render :edit, status: :unprocessable_entity
		end
	end
	
	def delete
		@address = Address.find(params[:id])
    	@address.destroy
		redirect_to profile_path, notice: "Address deleted."
	end

	private

	def address_params
		params.require(:address).permit(:address, :contact)
	end
end
