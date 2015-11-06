class FoodTypesController < ApplicationController
	before_action :set_food_type, only: [:show, :edit, :update, :destroy]
	def index	
		@food_types = FoodType.all
	end

	def show
	end

	def new
		@food_type = FoodType.new
		respond_to do |format|
      #format.html
      format.js { render 'new' }
    end
	end

	def edit
		respond_to do |format|
			#format.html
      format.js { render 'edit' }
    end
	end

	def create
		@food_type = FoodType.create(food_type_params)
		
		respond_to do |format|
      if @food_type.save
        format.html {redirect_to food_types_path, notice: 'Food Type was successfully created.'}
      else
      	#format.html
        format.js { render 'new' }
      end
    end
	end

	def update
		respond_to do |format|
			if @food_type.update_attributes(food_type_params)
				format.html {redirect_to food_types_path, notice: 'Food Type was successfully updated.'}
			else
				#format.html
				format.js {render 'edit'}
			end
		end
	end

	def destroy
		@food_type.destroy
		redirect_to food_types_path
	end

	private
		def set_food_type
			@food_type = FoodType.find(params[:id])
		end

		def food_type_params
			params.require(:food_type).permit(:name)
		end
end
