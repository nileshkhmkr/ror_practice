class CatalogueController < ApplicationController
	before_action :login_if_not_authenticated

	def index
		@products = StockItem.order('created_at DESC')
	end
end