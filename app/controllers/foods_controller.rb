class FoodsController < ApplicationController
	before_action :set_food, only: [:show, :edit, :update, :destroy]
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

	def new
		food_type_data
		@food = Food.new
		respond_to do |format|
      #format.html
      format.js { render 'new' }
    end
	end

	def edit
		set_food
		food_type_data
		respond_to do |format|
			#format.html
      format.js { render 'edit' }
    end
	end

	def create
		food_type_data
		@food = Food.create(food_params)
		
		respond_to do |format|
      if @food.save
        format.html { redirect_to foods_path }
      else
      	#format.html
        format.js { render :action => "new" }
      end
    end
	end

	def update
		set_food
		food_type_data
		respond_to do |format|
			if @food.update_attributes(food_params)
				format.html { redirect_to foods_path }
			else
				#format.html
				format.js {render :action => "edit"}
			end
		end
	end

	def destroy
		set_food
		@food.destroy
		redirect_to foods_path
	end

	private
		def set_food
			@food = Food.find(params[:id])
		end

		def food_params
			params.require(:food).permit(:name, :description, :image)
		end
		
end