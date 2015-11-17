json.array!(@food_caterings) do |food_catering|
  json.extract! food_catering, :id, :price, :additional, :food_id
  json.url food_catering_url(food_catering, format: :json)
end
