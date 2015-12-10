class AddFoodToPackageDetails < ActiveRecord::Migration
  def change
    add_reference :package_details, :foods, index: true, foreign_key: true
  end
end
