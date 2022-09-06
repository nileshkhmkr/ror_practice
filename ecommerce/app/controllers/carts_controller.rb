class CartsController < ApplicationController
	before_action :login_if_not_authenticated

	def index
	end

	def create_cart
	end

  def add_item
	end

	def update_item
	end

	def remove_item
	end

	def clear_cart
	end

	def delete_cart
	end

	private

	def cart_params
		params.require(:cart).permit(:cart_id, :user_id)
	end
end
