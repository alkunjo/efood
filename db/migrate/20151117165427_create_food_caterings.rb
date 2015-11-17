class CreateFoodCaterings < ActiveRecord::Migration
  def change
    create_table :food_caterings do |t|
      t.integer :price
      t.text :additional
      t.references :food, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
