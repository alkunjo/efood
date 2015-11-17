class PackageCateringsController < ApplicationController
  before_action :set_package_catering, only: [:show, :edit, :update, :destroy]

  # GET /package_caterings
  # GET /package_caterings.json
  def index
    @package_caterings = PackageCatering.all
  end

  # GET /package_caterings/1
  # GET /package_caterings/1.json
  def show
  end

  # GET /package_caterings/new
  def new
    @package_catering = PackageCatering.new
  end

  # GET /package_caterings/1/edit
  def edit
  end

  # POST /package_caterings
  # POST /package_caterings.json
  def create
    @package_catering = PackageCatering.new(package_catering_params)

    respond_to do |format|
      if @package_catering.save
        format.html { redirect_to @package_catering, notice: 'Package catering was successfully created.' }
        format.json { render :show, status: :created, location: @package_catering }
      else
        format.html { render :new }
        format.json { render json: @package_catering.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /package_caterings/1
  # PATCH/PUT /package_caterings/1.json
  def update
    respond_to do |format|
      if @package_catering.update(package_catering_params)
        format.html { redirect_to @package_catering, notice: 'Package catering was successfully updated.' }
        format.json { render :show, status: :ok, location: @package_catering }
      else
        format.html { render :edit }
        format.json { render json: @package_catering.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /package_caterings/1
  # DELETE /package_caterings/1.json
  def destroy
    @package_catering.destroy
    respond_to do |format|
      format.html { redirect_to package_caterings_url, notice: 'Package catering was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package_catering
      @package_catering = PackageCatering.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_catering_params
      params.require(:package_catering).permit(:price, :additional, :package_id)
    end
end
