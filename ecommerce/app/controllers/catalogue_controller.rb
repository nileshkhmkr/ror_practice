class CatalogueController < ApplicationController
	before_action :login_if_not_authenticated
	
	def index
	end
end