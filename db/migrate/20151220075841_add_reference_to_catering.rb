class AddReferenceToCatering < ActiveRecord::Migration
  include Paperclip::Schema
  def change
    change_table :caterings do |t|
        t.string :name
        t.string :phone
        t.string :address
        t.integer :capacity
        t.string :username
        t.attachment :logo
        t.references :food_caterings
        t.references :package_caterings
    end
  end
end
