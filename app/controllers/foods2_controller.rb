class Foods2Controller < ApplicationController
	layout "application2"
	before_action :set_food, only: :show
	#before_action :food_type_data, only: [:new, :edit, :create, :update]	

	def food_type_data
		@food_types = FoodType.order(:name)
	end

	def index	
		@foods = Food.all
		respond_to do |format|
			format.html
			#format.json {render json: @foods}
		end
	end

	def show
		set_food
		respond_to do |format|
      format.js #{ render 'show' }
    end
	end

	private
		def set_food
			@food = Food.find(params[:id])
		end

		def food_params
			params.require(:food).permit(:name, :description, :image, :food_types_id)
		end
		
end