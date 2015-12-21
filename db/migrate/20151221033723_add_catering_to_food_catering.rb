class AddCateringToFoodCatering < ActiveRecord::Migration
  def change
    add_reference :food_caterings, :catering, index: true
  end
end
