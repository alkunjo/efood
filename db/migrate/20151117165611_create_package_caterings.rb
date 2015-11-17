class CreatePackageCaterings < ActiveRecord::Migration
  def change
    create_table :package_caterings do |t|
      t.integer :price
      t.text :additional
      t.references :package, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
