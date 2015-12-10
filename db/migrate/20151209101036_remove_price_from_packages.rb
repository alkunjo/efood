class RemovePriceFromPackages < ActiveRecord::Migration
  def change
    remove_column :packages, :price, :integer
  end
end
