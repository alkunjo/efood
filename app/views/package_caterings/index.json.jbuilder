json.array!(@package_caterings) do |package_catering|
  json.extract! package_catering, :id, :price, :additional, :package_id
  json.url package_catering_url(package_catering, format: :json)
end
