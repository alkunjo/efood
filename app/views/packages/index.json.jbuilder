json.array!(@packages) do |package|
  json.extract! package, :id, :name, :price, :description
  json.url package_url(package, format: :json)
end
