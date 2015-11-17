class FoodCateringsController < ApplicationController
  before_action :set_food_catering, only: [:show, :edit, :update, :destroy]

  # GET /food_caterings
  # GET /food_caterings.json
  def index
    @food_caterings = FoodCatering.all
  end

  # GET /food_caterings/1
  # GET /food_caterings/1.json
  def show
  end

  # GET /food_caterings/new
  def new
    @food_catering = FoodCatering.new
  end

  # GET /food_caterings/1/edit
  def edit
  end

  # POST /food_caterings
  # POST /food_caterings.json
  def create
    @food_catering = FoodCatering.new(food_catering_params)

    respond_to do |format|
      if @food_catering.save
        format.html { redirect_to @food_catering, notice: 'Food catering was successfully created.' }
        format.json { render :show, status: :created, location: @food_catering }
      else
        format.html { render :new }
        format.json { render json: @food_catering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_caterings/1
  # PATCH/PUT /food_caterings/1.json
  def update
    respond_to do |format|
      if @food_catering.update(food_catering_params)
        format.html { redirect_to @food_catering, notice: 'Food catering was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_catering }
      else
        format.html { render :edit }
        format.json { render json: @food_catering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_caterings/1
  # DELETE /food_caterings/1.json
  def destroy
    @food_catering.destroy
    respond_to do |format|
      format.html { redirect_to food_caterings_url, notice: 'Food catering was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_catering
      @food_catering = FoodCatering.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_catering_params
      params.require(:food_catering).permit(:price, :additional, :food_id)
    end
end
