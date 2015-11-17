class CreatePackageDetails < ActiveRecord::Migration
  def change
    create_table :package_details do |t|
      t.references :package, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
