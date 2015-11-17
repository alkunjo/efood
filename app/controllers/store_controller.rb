class StoreController < ApplicationController
	def index
		@caterings = Catering.all
	end

	def show
		catering = Catering.find(params[:id])
		@foods = catering.foods
	end
end
