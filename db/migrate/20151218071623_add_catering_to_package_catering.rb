class AddCateringToPackageCatering < ActiveRecord::Migration
  def change
    add_reference :package_caterings, :catering, index: true, foreign_key: true
  end
end
