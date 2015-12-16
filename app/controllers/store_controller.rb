class StoreController < ApplicationController
  def index
  	@foods = Food.order(:id)
  end
end
