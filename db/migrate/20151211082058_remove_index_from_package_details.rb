class RemoveIndexFromPackageDetails < ActiveRecord::Migration
  def up
  	remove_index :package_details, :foods_id
  	add_column :package_details, :food_id, :integer
  	add_index :package_details, :food_id
  end
  def down
  	remove_column :package_details, :foods_id
  end
end
