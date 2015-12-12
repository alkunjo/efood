class PackageDetailsController < ApplicationController
  before_action :set_package_detail, only: [:show, :edit, :update, :destroy]

  def set_food
    @foods = Food.order(:name)
  end

  # GET /package_details
  # GET /package_details.json
  def index
    @package = Package.find(params[:package_id])
    @package_details = @package.package_details
  end

  # GET /package_details/1
  # GET /package_details/1.json
  def show
  end

  # GET /package_details/new
  def new
    set_food
    package = Package.find(params[:package_id])
    @package_detail = package.package_details.build

    respond_to do |format|
      format.js { render :action => "new" }
    end
  end

  # GET /package_details/1/edit
  def edit
      set_food
      package = Package.find(params[:package_id])
      @package_detail = package.package_details.find(params[:id])
      respond_to do |format|
        format.js { render :action => "edit" }
      end
    end

  # POST /package_details
  # POST /package_details.json
  def create
    package = Package.find(params[:package_id])
    @package_detail = package.package_details.create(package_detail_params)

    respond_to do |format|
      if @package_detail.save
        format.js { redirect_to package_path(package) }
      else
        format.js { render :action => "new" }
      end
    end
  end

  # PATCH/PUT /package_details/1
  # PATCH/PUT /package_details/1.json
  def update
    package = Package.find(params[:package_id])
    @package_detail = package.package_details.find(params[:id])
    respond_to do |format|
      if @package_detail.update_attributes(package_detail_params)
        format.html { redirect_to @package_detail, notice: 'Package detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @package_detail }
      else
        format.html { render :edit }
        format.json { render json: @package_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /package_details/1
  # DELETE /package_details/1.json
  def destroy
    package = Package.find(params[:package_id])
    @package_detail = package.package_details.find(params[:id])
    @package_detail.destroy
    respond_to do |format|
      format.html { redirect_to packages_path, notice: 'Package detail was successfully destroyed.' }
      #format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package_detail
      @package_detail = PackageDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_detail_params
      params.require(:package_detail).permit(:package_id,:food_id)
    end
end
