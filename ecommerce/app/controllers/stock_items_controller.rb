class StockItemsController < ApplicationController
	protect_from_forgery except: [:create]
	before_action :login_if_not_authenticated

	def index
		@stock_items = StockItem.order('created_at DESC')
	end

	def create
		@stock_item = StockItem.new(stock_item_params)
		if @stock_item.save
			redirect_to "/stock_items/index", notice: "Item added."
		else
			render :new, status: :unprocessable_entity
		end
	end

	def new
		@stock_item = StockItem.new
	end
	
	def view
		@stock_item = StockItem.find(params[:id])
	end
	
	def edit
		@stock_item = StockItem.find(params[:id])
	end

	def update
		@stock_item = StockItem.find(params[:id])
    if @stock_item.update(stock_item_params)
			redirect_to "/stock_items/index", notice: "Item updated."
		else
			render :edit, status: :unprocessable_entity
		end
	end
	
	def delete
		@stock_item = StockItem.find(params[:id])
    @stock_item.destroy
		redirect_to "/stock_items/index", notice: "Item deleted."
	end

	private

	def stock_item_params
		params.require(:stock_item).permit(:name, :price, :quantity)
	end

end