class AddForeignKeyToPackageDetail < ActiveRecord::Migration
  def up
  	add_foreign_key :package_details, :foods
  end
  def down
  	
  end
end
