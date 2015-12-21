class FoodCatering < ActiveRecord::Base
  belongs_to :food
  belongs_to :catering
end
