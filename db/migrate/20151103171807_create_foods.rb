class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.attachment :image
      t.references :food_types, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
