class StockItemsController < ApplicationController
	before_action :login_if_not_authenticated

	def index
		@stock_items = StockItem.order('created_at DESC')
	end

	def create
		@stock_item = StockItem.new(stock_item_params)
		if @stock_item.save
			redirect_to root_path, notice: "Signup successful."
		else
			render :new, status: :unprocessable_entity
		end
	end

	def new
		@stock_item = StockItem.new
	end
	
	def read
		@stock_item = StockItem.find(params[:id])
	end
	
	def edit
		@stock_item = StockItem.find(params[:id])
	end

	def update
		@stock_item = StockItem.find(params[:id])
    @stock_item.update(stock_item_params)
	end
	
	def delete
		@stock_item = StockItem.find(params[:id])
    @stock_item.destroy
	end

	private

	def stock_item_params
		params.require(:stock_item).permit(:name, :price, :quantity)
	end

end